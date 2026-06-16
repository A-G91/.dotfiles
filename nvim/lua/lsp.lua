local capabilities = require('blink.cmp').get_lsp_capabilities()

-- PYTHON
--
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
        useLibraryCodeForTypes = true
      }
    }
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


-- KEYMAPS
local extra = require("mini.extra")

-- go to definition
vim.keymap.set("n", "<C-d>", function()
  extra.pickers.lsp({ scope = "definition" })
end, opts)

-- go to definition in vertical split
vim.keymap.set("n", "<C-e>", function()
  vim.cmd("vsplit")
  extra.pickers.lsp({ scope = "definition" })
end, opts)
