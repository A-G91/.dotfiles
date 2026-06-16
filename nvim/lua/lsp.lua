local capabilities = require('blink.cmp').get_lsp_capabilities()

-- PYTHON
local python_markers = { "pyproject.toml", ".env" }

vim.lsp.config['pyright'] = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = python_markers,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
      },
    },
  },
  capabilities = capabilities,
}

vim.lsp.config['ruff'] = {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = python_markers,
  capabilities = capabilities,
}

vim.lsp.enable('pyright')
vim.lsp.enable('ruff')

-- LSP keymaps (global — no LspAttach autocmd)
local keymap = vim.keymap

keymap.set("n", "<C-d>", function()
  require("telescope.builtin").lsp_definitions()
end, { silent = true, desc = "Go to definition" })
keymap.set("n", "<C-e>", function()
  require("telescope.builtin").lsp_definitions({ jump_type = "vsplit" })
end, { silent = true, desc = "Go to definition (vsplit)" })
keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", { silent = true, desc = "Show LSP references" })
keymap.set("n", "gD", vim.lsp.buf.declaration, { silent = true, desc = "Go to declaration" })
keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { silent = true, desc = "Show LSP definitions" })
keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { silent = true, desc = "Show LSP implementations" })
keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { silent = true, desc = "Show LSP type definitions" })
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { silent = true, desc = "See available code actions" })
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { silent = true, desc = "Smart rename" })
keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { silent = true, desc = "Show buffer diagnostics" })
keymap.set("n", "<leader>d", vim.diagnostic.open_float, { silent = true, desc = "Show line diagnostics" })
keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { silent = true, desc = "Go to previous diagnostic" })
keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { silent = true, desc = "Go to next diagnostic" })
keymap.set("n", "K", vim.lsp.buf.hover, { silent = true, desc = "Show documentation under cursor" })
keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", { silent = true, desc = "Restart LSP" })
