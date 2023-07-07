require('github-theme').setup({
    options = {
    styles = {
      comments = 'italic',
      keywords = 'bold',
      types = 'italic,bold',
    },
    modules = {
      cmp = true,
      gitsigns = true,
      telescope = true,
      whichkey = true,
      treesitter = true,
      dapui = true,
      fzf = true,
    },
  }
})

vim.cmd('colorscheme github_dark')
