-- telescope.nvim setup
local telescope_ok, telescope = pcall(require, 'telescope')
if not telescope_ok then
  return
end

local trouble = require 'trouble.providers.telescope'

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<C-t>'] = trouble.open_with_trouble,
      },
      n = {
        ['<C-t>'] = trouble.open_with_trouble,
      },
    },
    vimgrep_arguments = {
      'rg',
      '--vimgrep',
      '--hidden',
      '--smart-case',
      '--trim',
    },
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = 'dropdown',
      previewer = false,
    },
  },
  extensions = {
    file_browser = {
      theme = 'ivy',
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
  },
})

-- Extensions
telescope.load_extension 'file_browser'
telescope.load_extension 'fzf'
telescope.load_extension 'frecency'
