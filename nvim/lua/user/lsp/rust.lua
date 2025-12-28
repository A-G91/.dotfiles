

local capabilities = require('blink.cmp').get_lsp_capabilities()
local rust_markers = {}

vim.lsp.config['rust_analyzer'] = {
  cmd = {'rust-analyzer'},
  filetypes = { 'rust' },
  root_markers = rust_markers,
  capabilities = capabilities,
}

vim.lsp.enable('rust_analyzer')

