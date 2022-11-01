local status_ok, dap = pcall(require, "dap")
if not status_ok then
	return
end
--[[
local dap_breakpoint = {
  error = {
    text = "",
    texthl = "lspdiagnosticssignerror",
    linehl = "",
    numhl = "",
  },
  rejected = {
    text = "",
    texthl = "lspdiagnosticssignhint",
    linehl = "",
    numhl = "",
  },
  stopped = {
    text = "ﰲ",
    texthl = "lspdiagnosticssigninformation",
    linehl = "diagnosticunderlineinfo",
    numhl = "lspdiagnosticssigninformation",
  },
}

vim.fn.sign_define("dapbreakpoint", dap_breakpoint.error)
vim.fn.sign_define("dapstopped", dap_breakpoint.stopped)
vim.fn.sign_define("dapbreakpointrejected", dap_breakpoint.rejected)
]]
local dapui = require("dapui")
  dapui.setup {} -- use default
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
-- python, need venv with debugpy installed
require("dap-python").setup("~/.venvs/debugpy/bin/python")
