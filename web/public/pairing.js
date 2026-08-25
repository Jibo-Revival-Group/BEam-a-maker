(function () {
  const STORAGE_KEY = "beamaker.robotIp";
  const SPLASH_KEY = "beamaker.splashSeen";
  const input = document.getElementById("robot-ip");
  const button = document.getElementById("connect");
  const status = document.getElementById("status");
  const card = document.getElementById("robot-card");
  const art = document.getElementById("robot-art");
  const splash = document.getElementById("splash");
  const overlay = document.getElementById("connecting");
  const phaseConnecting = document.getElementById("phase-connecting");
  const phaseConnected = document.getElementById("phase-connected");
  const pairingLottie = document.getElementById("pairing-lottie");
  const starsPairing = document.getElementById("stars-pairing");
  const starsConnecting = document.getElementById("stars-connecting");

  function looksLikeHost(value) {
    const host = value.trim();
    if (!host || /\s/.test(host)) return false;
    if (/^(\d{1,3}\.){3}\d{1,3}$/.test(host)) {
      return host.split(".").every(function (part) {
        const n = Number(part);
        return n >= 0 && n <= 255;
      });
    }
    return /^[A-Za-z0-9][A-Za-z0-9.-]*[A-Za-z0-9]$/.test(host) || host === "localhost";
  }

  function setStatus(message, kind) {
    status.textContent = message || "";
    status.className = "status" + (kind ? " " + kind : "");
  }

  function selectCard(on) {
    card.classList.toggle("selected", on);
    card.setAttribute("aria-pressed", on ? "true" : "false");
    art.src = on ? "/apk/mipmap/ic_jibo_pairing_selected.png" : "/apk/mipmap/ic_jibo_pair.png";
  }

  function syncButton() {
    const ok = looksLikeHost(input.value);
    button.disabled = !ok;
    if (ok) selectCard(true);
  }

  function hideSplash() {
    splash.classList.add("is-leaving");
    setTimeout(function () {
      splash.classList.add("is-gone");
    }, 300);
  }

  function showConnecting() {
    phaseConnected.classList.remove("is-active");
    phaseConnecting.classList.add("is-active");
    overlay.classList.add("is-open");
    overlay.setAttribute("aria-hidden", "false");
    BamStars.start(starsConnecting);
    BamLottie.play(pairingLottie, "/apk/assets/pairing/pairing.json", {
      loop: true,
      assetsPath: "/apk/assets/pairing/"
    });
  }

  function hideConnecting() {
    overlay.classList.remove("is-open");
    overlay.setAttribute("aria-hidden", "true");
    BamStars.stop(starsConnecting);
    BamLottie.stop(pairingLottie);
  }

  function showConnected() {
    return new Promise(function (resolve) {
      phaseConnecting.classList.remove("is-active");
      phaseConnected.classList.add("is-active");
      setTimeout(resolve, 1100);
    });
  }

  fetch("/api/status")
    .then(function (res) {
      return res.json();
    })
    .then(function (info) {
      if (info && info.connected) {
        window.location.href = "/scratch";
        return;
      }
      boot();
    })
    .catch(boot);

  function boot() {
    BamStars.start(starsPairing);
    input.value = localStorage.getItem(STORAGE_KEY) || "";
    syncButton();
    if (sessionStorage.getItem(SPLASH_KEY)) {
      splash.classList.add("is-gone");
    } else {
      setTimeout(function () {
        sessionStorage.setItem(SPLASH_KEY, "1");
        hideSplash();
      }, 1000);
    }
  }

  input.addEventListener("input", syncButton);
  input.addEventListener("click", function (event) {
    event.stopPropagation();
  });
  input.addEventListener("keydown", function (event) {
    if (event.key === "Enter" && !button.disabled) button.click();
  });

  card.addEventListener("click", function () {
    if (looksLikeHost(input.value)) selectCard(true);
    else input.focus();
  });
  card.addEventListener("keydown", function (event) {
    if (event.key === "Enter" && event.target === card && !button.disabled) button.click();
  });

  document.getElementById("btn-refresh").addEventListener("click", function () {
    card.classList.remove("selected");
    requestAnimationFrame(function () {
      syncButton();
    });
  });

  document.getElementById("btn-back").addEventListener("click", function () {
    splash.classList.remove("is-gone", "is-leaving");
    sessionStorage.removeItem(SPLASH_KEY);
    setTimeout(function () {
      sessionStorage.setItem(SPLASH_KEY, "1");
      hideSplash();
    }, 1000);
  });

  button.addEventListener("click", async function () {
    const host = input.value.trim();
    localStorage.setItem(STORAGE_KEY, host);
    button.disabled = true;
    setStatus("");
    showConnecting();
    try {
      const response = await fetch("/api/connect", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ host: host })
      });
      const body = await response.json();
      if (!response.ok || !body.connected) {
        throw new Error(body.message || "Couldn't reach :" + (body.port || "7160"));
      }
      await showConnected();
      window.location.href = "/scratch";
    } catch (err) {
      hideConnecting();
      setStatus(err.message || "Couldn't reach :7160", "error");
      syncButton();
    }
  });
})();
