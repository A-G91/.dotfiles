

local capabilities = require('blink.cmp').get_lsp_capabilities()
local zig_markers = {"build.zig"}

vim.lsp.config['zls'] = {
  cmd = {'zls'},
  filetypes = { 'zig' },
  root_markers = zig_markers,
  capabilities = capabilities,
}



vim.lsp.enable('zls')

