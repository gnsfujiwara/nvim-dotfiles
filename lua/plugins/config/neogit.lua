-- neogit setup
local neogit_ok, neogit = pcall(require, 'neogit')
if not neogit_ok then
  return
end

neogit.setup({
  kind = 'split',
  signs = {
    section = { '', '' },
    item = { '', '' },
    hunk = { '', '' },
  },
  integrations = {
    diffview = true,
  },
})
