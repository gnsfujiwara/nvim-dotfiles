local mason_lspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_ok then
  return
end

-- Language servers list
local servers = {
  'clangd',
  'rust_analyzer',
  'pyright',
  'sumneko_lua',
  'vimls',
  'bashls',
  'gopls',
}

-- mason-lspconfig.nvim setup
mason_lspconfig.setup({
  ensure_installed = servers,
})

local defaults = {
  on_attach = require('lsp.handlers').on_attach,
  capabilities = require('lsp.handlers').capabilities,
}

local lspconfig = require 'lspconfig'

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup(defaults)
  end,
  ['sumneko_lua'] = function()
    lspconfig.sumneko_lua.setup(vim.tbl_deep_extend('force', require 'lsp.settings.sumneko_lua', defaults))
  end,
})
