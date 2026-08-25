(function () {
  const queue = [];
  let socket = null;
  let opened = false;

  function send(msg) {
    if (socket && socket.readyState === WebSocket.OPEN) {
      socket.send(JSON.stringify(msg));
    } else {
      queue.push(msg);
    }
  }

  function flush() {
    while (queue.length && socket && socket.readyState === WebSocket.OPEN) {
      socket.send(JSON.stringify(queue.shift()));
    }
  }

  function applyIncoming(data) {
    if (!window.jibo) return;
    if (data.type === 'eventHandler' && data.block_id && typeof window.jibo.eventHandler === 'function') {
      window.jibo.eventHandler(data.block_id);
    } else if (data.type === 'transactionCallback' && typeof window.jibo.transactionCallback === 'function') {
      window.jibo.transactionCallback(data.trans_id, data.block_id);
    } else if (data.type === 'eventCallback' && typeof window.jibo.eventCallback === 'function') {
      window.jibo.eventCallback(data.data);
    }
  }

  function connectWs() {
    const proto = location.protocol === 'https:' ? 'wss' : 'ws';
    socket = new WebSocket(proto + '://' + location.host + '/ws');
    socket.addEventListener('open', () => {
      opened = true;
      flush();
    });
    socket.addEventListener('message', (event) => {
      let data;
      try {
        data = JSON.parse(event.data);
      } catch (_) {
        return;
      }
      if (data.type === 'status') {
        window.dispatchEvent(new CustomEvent('bam-status', { detail: data }));
        return;
      }
      applyIncoming(data);
    });
    socket.addEventListener('close', () => {
      if (opened) setTimeout(connectWs, 1500);
    });
  }

  connectWs();

  window.appInterface = {
    callbackHandler: function (json) {
      const command = typeof json === 'string' ? JSON.parse(json) : json;
      send({
        type: 'command',
        block_type: command.block_type,
        args: command.args,
        block_id: command.block_id
      });
    },
    startScript: function () {},
    finishScript: function () {},
    scratchLoaded: function () {
      window.dispatchEvent(new Event('bam-scratch-ready'));
    },
    commandHandler: function (json) {
      const data = typeof json === 'string' ? JSON.parse(json) : json;
      window.dispatchEvent(new CustomEvent('bam-save', { detail: data }));
    },
    blockMoved: function () {},
    promptEvent: function (json) {
      let payload = json;
      try {
        payload = typeof json === 'string' ? JSON.parse(json) : json;
      } catch (_) {
        payload = {};
      }
      const message = payload.message || payload.msg || 'Name';
      const fallback = payload.default || payload.arg || '';
      const result = window.prompt(message, fallback);
      if (typeof window.setVariableValue === 'function') {
        window.setVariableValue(result == null ? '' : String(result));
      }
    }
  };
})();
