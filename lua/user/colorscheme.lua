-- vim.cmd [[
-- try
--   colorscheme monokai_soda
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
--
-- require('monokai').setup { palette = require('monokai').soda }

require("github-theme").setup({
	theme_style = "dark",
	function_style = "italic",
	sidebars = { "qf", "vista_kind", "terminal", "packer" },

	-- Change the "hint" color to the "orange" color, and make the "error" color bright red
	colors = { hint = "orange", error = "#ff0000" },

	-- Overwrite the highlight groups
	overrides = function(c)
		return {
			htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
			DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
			-- this will remove the highlight groups
		}
	end,
})

-- Load and setup function to choose plugin and language highlights for codeschool
-- require('lush')(require('codeschool').setup({
--   plugins = {
--     -- "buftabline",
--     -- "coc",
--     "cmp", -- nvim-cmp
--     -- "fzf",
--     -- "gitgutter",
--     "gitsigns",
--     "lsp",
--     -- "lspsaga",
--     -- "nerdtree",
--     -- "netrw",
--     "nvimtree",
--     -- "neogit",
--     "packer",
--     -- "signify",
--     -- "startify",
--     -- "syntastic",
--     "telescope",
--     "treesitter"
--   },
--   langs = {
--     "c",
--     "clojure",
--     "coffeescript",
--     "csharp",
--     "css",
--     "elixir",
--     "golang",
--     "haskell",
--     "html",
--     "java",
--     "js",
--     "json",
--     "jsx",
--     "lua",
--     "markdown",
--     "moonscript",
--     "objc",
--     "ocaml",
--     "purescript",
--     "python",
--     "ruby",
--     "rust",
--     "scala",
--     "typescript",
--     "viml",
--     "xml"
--   }
-- }))
