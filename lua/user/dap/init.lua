local status_ok, _ = pcall(require, "dap")
if not status_ok then
	return
end
-- TODO: Add more configurations

-- Python, need venv with debugpy installed
require('dap-python').setup('~/.venvs/debugpy/bin/python')
