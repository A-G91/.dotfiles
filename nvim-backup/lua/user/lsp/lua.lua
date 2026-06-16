
local capabilities = require('blink.cmp').get_lsp_capabilities()
local lua_markers = {".luarocks", "lua_modules/" "*.lua"}

vim.lsp.config['lua_ls'] = {
  -- Command and arguments to start the server.
  cmd = { 'lua-language-server' },
  -- Filetypes to automatically attach to.
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' } },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
}

vim.lsp.enable('lua_ls')
