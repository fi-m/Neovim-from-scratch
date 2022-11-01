local status_ok, _ = pcall(require, "mason")
if not status_ok then
	return
end

<<<<<<< HEAD
status_ok, _ = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

require("mason").setup()
require("mason-lspconfig").setup()

require("user.lsp.configs")
=======
require "user.lsp.mason"
>>>>>>> 76327a4c8034ec1a78f112005be6f80b1eed97b9
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
