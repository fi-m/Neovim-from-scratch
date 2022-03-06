vim.cmd [[
try
  colorscheme onedarkpro
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
