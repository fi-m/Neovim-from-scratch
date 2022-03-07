vim.cmd [[
try
  colorscheme monokai_soda 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

require('monokai').setup { palette = require('monokai').soda }

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
