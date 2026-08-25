(function () {
  const PROJECTS_KEY = 'beamaker.projects';
  const CURRENT_KEY = 'beamaker.currentProjectId';

  const nameInput = document.getElementById('project-name');
  const connLabel = document.getElementById('conn-label');
  const drawer = document.getElementById('drawer');
  const listEl = document.getElementById('project-list');

  function loadProjects() {
    try {
      return JSON.parse(localStorage.getItem(PROJECTS_KEY) || '[]');
    } catch (_) {
      return [];
    }
  }

  function saveProjects(projects) {
    localStorage.setItem(PROJECTS_KEY, JSON.stringify(projects));
  }

  function currentId() {
    return localStorage.getItem(CURRENT_KEY);
  }

  function setCurrentId(id) {
    if (id) localStorage.setItem(CURRENT_KEY, id);
    else localStorage.removeItem(CURRENT_KEY);
  }

  function uuid() {
    return 'p-' + Date.now().toString(36) + '-' + Math.random().toString(36).slice(2, 8);
  }

  function emptyXml() {
    return '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>';
  }

  function applyXml(xml) {
    if (typeof window.fromXml === 'function' && xml) {
      try {
        window.fromXml(xml);
      } catch (err) {
        console.warn('Could not load project XML', err);
      }
    }
  }

  function renderList() {
    const projects = loadProjects();
    listEl.innerHTML = '';
    if (!projects.length) {
      const empty = document.createElement('li');
      empty.textContent = 'No saved projects yet.';
      listEl.appendChild(empty);
      return;
    }
    projects.forEach((project) => {
      const item = document.createElement('li');
      const open = document.createElement('button');
      open.type = 'button';
      open.textContent = project.name || 'Jibo Project';
      open.addEventListener('click', () => {
        setCurrentId(project.id);
        nameInput.value = project.name || 'Jibo Project';
        applyXml(project.xml);
        drawer.hidden = true;
      });
      const del = document.createElement('button');
      del.type = 'button';
      del.className = 'delete';
      del.textContent = 'Delete';
      del.addEventListener('click', () => {
        saveProjects(loadProjects().filter((entry) => entry.id !== project.id));
        if (currentId() === project.id) setCurrentId(null);
        renderList();
      });
      item.appendChild(open);
      item.appendChild(del);
      listEl.appendChild(item);
    });
  }

  function saveNow(xml) {
    const projects = loadProjects();
    let id = currentId();
    let project = projects.find((entry) => entry.id === id);
    if (!project) {
      project = { id: uuid(), name: nameInput.value.trim() || 'Jibo Project', xml: xml || emptyXml() };
      projects.push(project);
      setCurrentId(project.id);
    } else {
      project.name = nameInput.value.trim() || project.name;
      if (xml) project.xml = xml;
    }
    saveProjects(projects);
    renderList();
  }

  document.getElementById('btn-menu').addEventListener('click', () => {
    drawer.hidden = !drawer.hidden;
    renderList();
  });
  document.getElementById('btn-close-drawer').addEventListener('click', () => {
    drawer.hidden = true;
  });
  document.getElementById('btn-new').addEventListener('click', () => {
    setCurrentId(null);
    nameInput.value = 'Jibo Project';
    applyXml(emptyXml());
  });
  document.getElementById('btn-edit').addEventListener('click', () => {
    const next = window.prompt('Project name', nameInput.value || 'Jibo Project');
    if (next != null && next.trim()) {
      nameInput.value = next.trim();
      saveNow();
    }
  });
  document.getElementById('btn-save').addEventListener('click', () => {
    if (typeof window.toXml === 'function') window.toXml();
  });
  document.getElementById('btn-disconnect').addEventListener('click', async () => {
    await fetch('/api/disconnect', { method: 'POST' });
    window.location.href = '/';
  });

  window.addEventListener('bam-save', (event) => {
    const detail = event.detail || {};
    if (detail.action === 'Save' && detail.arg) saveNow(detail.arg);
  });

  window.addEventListener('bam-scratch-ready', () => {
    const id = currentId();
    const project = loadProjects().find((entry) => entry.id === id);
    if (project) {
      nameInput.value = project.name || 'Jibo Project';
      applyXml(project.xml);
    }
  });

  window.addEventListener('bam-status', (event) => {
    const detail = event.detail || {};
    if (detail.state === 'connected' || detail.connected) {
      connLabel.textContent = 'Connected' + (detail.host ? ' · ' + detail.host : '');
    } else if (detail.state === 'error') {
      connLabel.textContent = detail.message || 'Connection error';
    } else {
      connLabel.textContent = 'Disconnected';
    }
  });

  fetch('/api/status')
    .then((res) => res.json())
    .then((status) => {
      if (!status.connected) {
        window.location.href = '/';
        return;
      }
      connLabel.textContent = 'Connected · ' + status.host;
    })
    .catch(() => {
      window.location.href = '/';
    });

  renderList();
})();
