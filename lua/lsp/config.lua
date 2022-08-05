local lspinstaller_ok, lspinstaller = pcall(require, 'nvim-lsp-installer')
if not lspinstaller_ok then
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
}

-- nvim-lsp-installer setup
lspinstaller.setup({
  ui = {
    border = 'rounded',
    icons = {
      server_installed = '✓',
      server_pending = '➜',
      server_uninstalled = '✗',
    },
  },
  automatic_installation = true,
})

-- LSP setup
local defaults = {
  on_attach = require('lsp.handlers').on_attach,
  capabilities = require('lsp.handlers').capabilities,
}

local lspconfig = require 'lspconfig'

for _, lsp in ipairs(servers) do
  if lsp == 'sumneko_lua' then
    lspconfig.sumneko_lua.setup(vim.tbl_deep_extend('force', require 'lsp.settings.sumneko_lua', defaults))
  else
    lspconfig[lsp].setup(defaults)
  end
end
