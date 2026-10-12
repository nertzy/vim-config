-- Bats test files: highlight with tree-sitter-bats, whose parser and queries
-- come from the nertzy/nvim-treesitter fork.

-- Neovim detects *.bats as sh, so give them a filetype the bats parser can own.
vim.filetype.add({ extension = { bats = 'bats' } })

-- Install the bats parser (and the bash queries it inherits) when missing.
if vim.fn.executable('tree-sitter') == 1 then
  pcall(function() require('nvim-treesitter').install({ 'bats' }) end)
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'bats',
  callback = function(args) pcall(vim.treesitter.start, args.buf, 'bats') end,
})
