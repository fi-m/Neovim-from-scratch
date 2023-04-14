local status_ok, vimtex = pcall(require, "vimtex")
if not status_ok then
	return
end

-- TODO: Fix configuration
-- vimtex options go here
vim.g.vimtex_view_method = "zathura"
