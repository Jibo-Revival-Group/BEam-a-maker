(function () {
  const STORAGE_KEY = 'beamaker.robotIp';
  const input = document.getElementById('robot-ip');
  const button = document.getElementById('connect');
  const status = document.getElementById('status');

  function looksLikeHost(value) {
    const host = value.trim();
    if (!host || /\s/.test(host)) return false;
    if (/^(\d{1,3}\.){3}\d{1,3}$/.test(host)) {
      return host.split('.').every((part) => {
        const n = Number(part);
        return n >= 0 && n <= 255;
      });
    }
    return /^[A-Za-z0-9][A-Za-z0-9.-]*[A-Za-z0-9]$/.test(host) || host === 'localhost';
  }

  function setStatus(message, kind) {
    status.textContent = message || '';
    status.className = 'status' + (kind ? ' ' + kind : '');
  }

  function syncButton() {
    button.disabled = !looksLikeHost(input.value);
  }

  input.value = localStorage.getItem(STORAGE_KEY) || '';
  syncButton();
  input.addEventListener('input', syncButton);
  input.addEventListener('keydown', (event) => {
    if (event.key === 'Enter' && !button.disabled) button.click();
  });

  button.addEventListener('click', async () => {
    const host = input.value.trim();
    localStorage.setItem(STORAGE_KEY, host);
    button.disabled = true;
    setStatus('Connecting to ' + host + ':7160…');
    try {
      const response = await fetch('/api/connect', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ host })
      });
      const body = await response.json();
      if (!response.ok || !body.connected) {
        throw new Error(body.message || "Couldn't reach :" + (body.port || '7160'));
      }
      setStatus('Connected on port ' + body.port + '. Opening Scratch…', 'ok');
      window.location.href = '/scratch';
    } catch (err) {
      setStatus(err.message || "Couldn't reach :7160", 'error');
      syncButton();
    }
  });
})();
