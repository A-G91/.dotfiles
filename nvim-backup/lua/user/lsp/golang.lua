
local capabilities = require('blink.cmp').get_lsp_capabilities()
local golang_markers = {}

vim.lsp.config['gopls'] = {
  cmd = {'gopls'},
  filetypes = { 'go' },
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



vim.lsp.enable('gopls')

