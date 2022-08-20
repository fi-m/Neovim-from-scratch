local status_ok, _ = pcall(require, "mason")
if not status_ok then
	return
end

status_ok, _ = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

require("mason").setup()
require("mason-lspconfig").setup()

require("user.lsp.configs")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
