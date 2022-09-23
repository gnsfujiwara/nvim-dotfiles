-- possesion.nvim setup
local persistence_ok, persistence = pcall(require, 'persistence')
if not persistence_ok then
  return
end

persistence.setup({
  dir = vim.fn.expand(vim.fn.stdpath 'data' .. '/sessions/'),
})
