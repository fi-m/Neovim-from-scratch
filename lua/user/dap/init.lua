local status_ok, _ = pcall(require, "dap")
if not status_ok then
	return
end

require('dap-python').setup('~/.venvs/debugpy/bin/python')
