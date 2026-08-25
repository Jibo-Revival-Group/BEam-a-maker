'use strict';

const { Client, AttentionMode } = require('rom-control');

const ROM_PORTS = [7160, 8160];
const CONNECT_MS = 12000;

function num(value, fallback = 0) {
  const n = Number(value);
  return Number.isFinite(n) ? n : fallback;
}

function asList(args) {
  if (args == null) return [];
  return Array.isArray(args) ? args : [args];
}

class BamRom {
  constructor() {
    this.client = null;
    this.host = null;
    this.port = null;
    this.listeners = new Set();
  }

  get connected() {
    return Boolean(this.client && this.client.connected);
  }

  onMessage(fn) {
    this.listeners.add(fn);
    return () => this.listeners.delete(fn);
  }

  emit(msg) {
    for (const fn of this.listeners) {
      try {
        fn(msg);
      } catch (err) {
        console.error('bam-rom listener failed', err);
      }
    }
  }

  status() {
    return {
      connected: this.connected,
      host: this.host,
      port: this.port
    };
  }

  async connect(host) {
    const trimmed = String(host || '').trim();
    if (!trimmed) {
      throw new Error('Enter a robot IP address.');
    }

    await this.disconnect();

    let lastError = null;
    for (const port of ROM_PORTS) {
      let client = null;
      try {
        client = new Client({
          host: trimmed,
          port,
          autoReconnect: false,
          autoHeartbeat: true,
          autoSubscribe: true
        });
        client.on('error', (err) => {
          this.emit({
            type: 'status',
            state: 'error',
            message: err && err.message ? err.message : String(err)
          });
        });
        await Promise.race([
          client.connect(),
          new Promise((_, reject) => {
            setTimeout(() => {
              reject(new Error(`Timed out connecting to ${trimmed}:${port}`));
            }, CONNECT_MS);
          })
        ]);
        this.client = client;
        this.host = trimmed;
        this.port = port;
        this._bindEvents(client);
        try {
          await client.behavior.setAttention(AttentionMode.Engaged);
        } catch (_) {
          /* attention is best-effort */
        }
        return this.status();
      } catch (err) {
        lastError = err;
        try {
          if (client) client.destroy();
        } catch (_) {
          /* ignore */
        }
        this.client = null;
      }
    }

    const detail = lastError && lastError.message ? lastError.message : String(lastError || 'unknown error');
    throw new Error(
      `Couldn't reach ROM on ${trimmed}:7160 (also tried :8160). ${detail} — check the IP, that the robot is on this LAN, and that ROM / developer mode is on.`
    );
  }

  async disconnect() {
    const client = this.client;
    this.client = null;
    this.host = null;
    this.port = null;
    if (!client) return;
    try {
      if (typeof client.destroy === 'function') client.destroy();
      else if (typeof client.disconnect === 'function') client.disconnect();
    } catch (_) {
      /* ignore */
    }
  }

  _bindEvents(client) {
    client.on('disconnect', () => {
      this.emit({ type: 'status', state: 'disconnected' });
    });
    client.on('error', (err) => {
      this.emit({
        type: 'status',
        state: 'error',
        message: err && err.message ? err.message : String(err)
      });
    });
    client.on('headTouch', () => {
      this.emit({
        type: 'eventCallback',
        data: JSON.stringify({ HeadSensors: true })
      });
    });
    client.on('gesture', (event) => {
      if (event && event.isTap && event.coordinate) {
        this.emit({
          type: 'eventCallback',
          data: JSON.stringify({
            gesture: { Coordinate: [event.coordinate.x, event.coordinate.y] }
          })
        });
      } else if (event && event.isSwipe) {
        this.emit({
          type: 'eventCallback',
          data: JSON.stringify({
            gesture: { Direction: event.direction }
          })
        });
      }
    });
    const sendTracks = () => {
      const tracks = [...client.tracks.values()].map((track) => ({
        WorldCoords: track.worldCoords
          ? [track.worldCoords.x, track.worldCoords.y, track.worldCoords.z]
          : [0, 0, 0]
      }));
      this.emit({
        type: 'eventCallback',
        data: JSON.stringify({ type: 'onEntityUpdate', tracks })
      });
    };
    client.on('trackCreate', sendTracks);
    client.on('trackUpdate', sendTracks);
    client.on('trackDelete', sendTracks);
    client.on('motionDetected', (motion) => {
      const zones = (motion && motion.zones) || [];
      const motions = zones.map((zone) => ({
        WorldCoords: zone.worldCoords
          ? [zone.worldCoords.x, zone.worldCoords.y, zone.worldCoords.z]
          : [0, 0, 0]
      }));
      this.emit({
        type: 'eventCallback',
        data: JSON.stringify({ motions: motions.length ? motions : [{ WorldCoords: [0, 0, 0] }] })
      });
    });
  }

  async handleCommand({ block_type, args, block_id }) {
    const type = String(block_type || '').toLowerCase();
    const list = asList(args);
    const client = this.client;

    const done = () => {
      if (block_id) this.emit({ type: 'eventHandler', block_id });
    };

    if (!client || !client.connected) {
      if (type === 'get_config') {
        this.emit({
          type: 'eventCallback',
          data: JSON.stringify({ config: { Mixers: { Master: 0.8 } } })
        });
      }
      done();
      return;
    }

    const txId = block_id || `tx-${Date.now()}`;
    this.emit({ type: 'transactionCallback', trans_id: String(txId), block_id });

    try {
      switch (type) {
        case 'say':
          await client.behavior.say(String(list[0] || ''));
          break;
        case 'listen': {
          try {
            const speech = await client.audio.awaitSpeech({ mode: 'local', time: 15000 });
            const text = (speech && (speech.content || speech.speech)) || '';
            this.emit({
              type: 'eventCallback',
              data: JSON.stringify({ listen: { Speech: text } })
            });
          } catch (_) {
            this.emit({
              type: 'eventCallback',
              data: JSON.stringify({ listen: { Speech: '' } })
            });
          }
          break;
        }
        case 'lookat':
          await client.behavior.lookAt({
            Angle: [num(list[0]), num(list[1])]
          });
          break;
        case 'lookat3d':
          await client.behavior.lookAtPosition(
            num(list[0]) * 1000,
            num(list[1]) * 1000,
            num(list[2]) * 1000
          );
          break;
        case 'takephoto':
          await client.camera.takePhoto();
          break;
        case 'get_config':
          this.emit({
            type: 'eventCallback',
            data: JSON.stringify({ config: { Mixers: { Master: 0.8 } } })
          });
          break;
        case 'set_config':
          await client.audio.setVolume(Math.max(0.1, Math.min(1, num(list[0], 0.8))));
          break;
        case 'cancel': {
          const id = Array.isArray(args) ? args[0] : args;
          if (client._conn && id && typeof client._conn.cancel === 'function') {
            client._conn.cancel(id);
          }
          break;
        }
        default:
          break;
      }
    } catch (err) {
      console.error('ROM command failed', type, err);
    } finally {
      done();
    }
  }
}

module.exports = { BamRom };
