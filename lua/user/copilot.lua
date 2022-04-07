-- local copilot_status_ok, copilot = pcall(require, "github/copilot.vim")
-- if not copilot_status_ok then
--     return
-- end
-- Fix copilot w/o tab completion


vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

-- Set up copilot keybindings
vim.api.nvim_set_keymap("i", "<C-A>", 'copilot#Accept("<CR>")', { silent = true, expr = true }) -- Ctrl-A to accept
vim.api.nvim_set_keymap("i", "<C-D>", 'copilot#Dismiss()', { silent = true, expr = true }) -- Ctrl-D to dismiss
vim.api.nvim_set_keymap("i", "<C-E>", 'copilot#Next()', { silent = true, expr = true }) -- Ctrl-E to next suggestion
vim.api.nvim_set_keymap("i", "<C-F", 'copilot#Previous()', { silent = true, expr = true }) -- Ctrl-F to previous suggestion

-- Configure files for copilot
 vim.g.copilot_filetypes = {
    ["*"] = false,
    ["javascript"] = true,
    ["typescript"] = true,
    ["lua"] = true,
    ["rust"] = true,
    ["c"] = true,
    ["c#"] = true,
    ["c++"] = true,
    ["go"] = true,
    ["python"] = true,
    ["vue"] = true,
}
