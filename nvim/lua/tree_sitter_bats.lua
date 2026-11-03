-- Register tree-sitter-bats as a custom nvim-treesitter parser that ships its
-- own queries. Required from vimrc right after plug#end(), before any plugin
-- script runs: plugins such as pkl-neovim call nvim-treesitter's update() at
-- startup, which must already see this registration or it reports "Parser not
-- available" and reinstalls bats on every launch.
vim.api.nvim_create_autocmd('User', {
  pattern = 'TSUpdate',
  callback = function()
    require('nvim-treesitter.parsers').bats = {
      install_info = {
        url = 'https://github.com/nertzy/tree-sitter-bats',
        revision = 'v0.2.0',
        queries = 'queries/neovim',
      },
      requires = { 'bash' },
    }
  end,
})
