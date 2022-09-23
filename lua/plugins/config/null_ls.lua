local null_ls_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_ok then
  return
end

local mason_null_ls_ok, mason_null_ls = pcall(require, 'mason-null-ls')
if not mason_null_ls_ok then
  return
end

-- null-ls.nvim setup
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.yapf,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.code_actions.shellcheck,
  },
  on_attach = require('lsp.handlers').on_attach,
})

-- mason-null-ls setup
mason_null_ls.setup({
  automatic_installation = true,
})
