-- bufferline.nvim setup
local bufferline_ok, bufferline = pcall(require, 'bufferline')
if not bufferline_ok then
  return
end

bufferline.setup({
  options = {
    mode = 'buffers',
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = true,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        text_align = 'left',
        separator = false,
      },
    },
  },
})
