print("python loaded")

local capabilities = require('blink.cmp').get_lsp_capabilities()
local python_markers = {'pyproject.toml', 'env', 'requirements.txt'}

vim.lsp.config['pyright'] = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = python_markers,
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
