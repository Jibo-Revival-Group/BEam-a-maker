(function () {
  if (window.VirtualMachine && window.VirtualMachine.prototype) {
    window.VirtualMachine.prototype.downloadProjectId = function () {
      return Promise.resolve();
    };
  }
  if (window.Blockly) {
    window.Blockly.prompt = function (message, defaultValue, callback) {
      const result = window.prompt(message, defaultValue == null ? '' : String(defaultValue));
      if (typeof callback === 'function') callback(result);
    };
  }
})();
