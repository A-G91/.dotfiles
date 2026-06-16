return {
  "stevearc/conform.nvim",
  opts = {
    notify_on_error = true,
    formatters_by_ft = {
      python = {"ruff_format", "ruff_organize_imports"}
    },
    format_on_save = {
      lsp_format = "fallback",
    },
  }
}
