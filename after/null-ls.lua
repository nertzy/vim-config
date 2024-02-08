require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.shfmt, -- shell script formatting
    require("null-ls").builtins.formatting.prettier, -- markdown formatting
  },
})
