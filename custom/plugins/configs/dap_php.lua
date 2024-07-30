local dap = require("dap")
dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { '/home/basluc/.config/nvchad-config/custom/plugins/configs/dap_adapters/vscode-php-debug/out/phpDebug.js' }
}
