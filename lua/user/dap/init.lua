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
-- python, need venv with debugpy installed
require("dap-python").setup("~/.venvs/debugpy/bin/python")
