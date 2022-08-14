--- barbar.nvim setup
local barbar_ok, barbar = pcall(require, 'bufferline')
if not barbar_ok then
  return
end

barbar.setup({
  animation = false,
})
