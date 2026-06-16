vim.pack.add({
  { src = 'https://github.com/stevearc/conform.nvim' },
})

require("conform").setup({
  formatters_by_ft = {
    -- Conform will run the first available formatter
    python = {"ruff_format", "ruff_organize_imports"},

    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = {"rustfmt"},
  },
  format_on_save = {
    lsp_format = "fallback",
  },
})
