vim.api.nvim_create_augroup('Lua', { clear = true })

-- Lua code style
vim.api.nvim_create_autocmd('FileType', {
  group = 'Lua',
  pattern = 'lua',
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
