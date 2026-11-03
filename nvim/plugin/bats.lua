-- Bats test files: highlight with tree-sitter-bats. The parser itself is
-- registered in lua/tree_sitter_bats.lua, required early from vimrc.

-- Neovim 0.12 detects *.bats as sh, so give them a filetype the bats parser
-- can own. Neovim 0.13 detects bats on its own.
vim.filetype.add({ extension = { bats = 'bats' } })

-- Install the bats parser (and the bash parser its queries inherit) when
-- missing.
if vim.fn.executable('tree-sitter') == 1 then
  pcall(function() require('nvim-treesitter').install({ 'bats' }) end)
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'bats',
  callback = function(args) pcall(vim.treesitter.start, args.buf, 'bats') end,
})
