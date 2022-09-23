-- null-ls.nvim setup
local null_ls_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_ok then
  return
end

local formatting = null_ls.builtins.formatting
-- local diagnostics = null_ls.builtins.diagnostics
local code_ations = null_ls.builtins.code_actions

null_ls.setup({
  sources = {
    -- Formatters
    formatting.yapf,
    formatting.stylua,
    formatting.shfmt,

    -- Diagnostics
    -- diagnostics.mypy,

    -- Code actions
    code_ations.shellcheck,
  },
  on_attach = require('lsp.handlers').on_attach
})
