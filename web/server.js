'use strict';

const path = require('path');
const http = require('http');
const express = require('express');
const { WebSocketServer } = require('ws');
const { BamRom } = require('./lib/bam-rom');

const PORT = Number(process.env.PORT) || 5173;
const ROOT = __dirname;
const REPO = path.join(ROOT, '..');
const PUBLIC = path.join(ROOT, 'public');
const PLAYGROUND = path.join(REPO, 'assets', 'web', 'playground');
const ASSETS = path.join(REPO, 'assets');
const RES = path.join(REPO, 'res');

const app = express();
const rom = new BamRom();

app.use(express.json({ limit: '2mb' }));
app.use(express.static(PUBLIC));
app.use('/playground', express.static(PLAYGROUND));
app.use('/apk/assets', express.static(ASSETS));
app.use('/apk/mipmap', express.static(path.join(RES, 'mipmap-xxhdpi')));
app.use('/apk/mipmap', express.static(path.join(RES, 'mipmap-xhdpi')));
app.use('/apk/mipmap', express.static(path.join(RES, 'mipmap-hdpi')));
app.use('/apk/mipmap', express.static(path.join(RES, 'mipmap-mdpi')));
app.use('/apk/drawable', express.static(path.join(RES, 'drawable-xxhdpi')));
app.use('/apk/drawable', express.static(path.join(RES, 'drawable-xhdpi')));
app.use('/apk/drawable', express.static(path.join(RES, 'drawable-hdpi')));
app.use('/apk/raw', express.static(path.join(RES, 'raw')));

app.get('/scratch', (_req, res) => {
  res.sendFile(path.join(PUBLIC, 'scratch.html'));
});

app.get('/api/status', (_req, res) => {
  res.json(rom.status());
});

app.get('/api/cool-ideas', (_req, res) => {
  res.sendFile(path.join(RES, 'raw', 'cool_ideas.json'));
});

app.post('/api/connect', async (req, res) => {
  try {
    const status = await rom.connect(req.body && req.body.host);
    res.json(status);
  } catch (err) {
    res.status(502).json({
      connected: false,
      message: err && err.message ? err.message : String(err)
    });
  }
});

app.post('/api/disconnect', async (_req, res) => {
  await rom.disconnect();
  res.json({ connected: false });
});

const server = http.createServer(app);
const wss = new WebSocketServer({ server, path: '/ws' });

function send(ws, msg) {
  if (ws.readyState === 1) ws.send(JSON.stringify(msg));
}

wss.on('connection', (ws) => {
  send(ws, { type: 'status', state: rom.connected ? 'connected' : 'disconnected', ...rom.status() });
  const off = rom.onMessage((msg) => send(ws, msg));
  ws.on('message', async (raw) => {
    let data;
    try {
      data = JSON.parse(String(raw));
    } catch (_) {
      return;
    }
    if (data.type === 'command') {
      await rom.handleCommand(data);
    }
  });
  ws.on('close', off);
});

server.listen(PORT, '0.0.0.0', () => {
  console.log(`Be a Maker web app: http://127.0.0.1:${PORT}`);
});
