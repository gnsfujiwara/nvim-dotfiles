-- bufferline.nvim setup
local bufferline_ok, bufferline = pcall(require, 'bufferline')
if not bufferline_ok then
  return
end

bufferline.setup({
  options = {
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = true,
  },
})
