-- dashboard-nvim setup
local dashboard_ok, dashboard = pcall(require, 'dashboard')
if not dashboard_ok then
  return
end

-- Set keymaps only when dashboard is active
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('DashboardMappings', { clear = true }),
  pattern = 'dashboard',
  callback = function()
    vim.keymap.set('n', 'e', '<Cmd>DashboardNewFile<CR>', { buffer = true })
    vim.keymap.set('n', 'q', '<Cmd>q!<CR>', { buffer = true })
  end,
})

dashboard.custom_header = {
  '',
  '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
  '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
  '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
  '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
  '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
  '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
  '',
}

dashboard.custom_center = {
  {
    icon = '  ',
    desc = 'Edit new file                          ',
    shortcut = '      e',
    action = 'DashboardNewFile',
  },
  {
    icon = 'ﮦ  ',
    desc = 'Restore last session                   ',
    shortcut = 'SPC s l',
    action = function()
      require('persistence').load({ last = true })
    end,
  },
  {
    icon = '  ',
    desc = 'Find file                              ',
    shortcut = 'SPC f f',
    action = 'Telescope find_files',
  },
  {
    icon = '  ',
    desc = 'File browser                           ',
    shortcut = 'SPC f e',
    action = 'Telescope file_browser',
  },
  {
    icon = '  ',
    desc = 'Find word                              ',
    shortcut = 'SPC f g',
    action = 'Telescope live_grep',
  },
  {
    icon = '  ',
    desc = 'Recent files                           ',
    shortcut = 'SPC f r',
    action = 'Telescope frecency',
  },
  {
    icon = '  ',
    desc = 'Quit Neovim                            ',
    shortcut = '      q',
    action = 'q!',
  },
}
