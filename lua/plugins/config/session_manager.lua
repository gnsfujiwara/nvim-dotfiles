-- neovim-session-manager setup
local session_manager_ok, session_manager = pcall(require, 'session_manager')
if not session_manager_ok then
  return
end

session_manager.setup({
  autosave_ignore_filetypes = {
    'gitcommit',
    'dashboard',
    'toggleterm',
  },
  autoload_mode = require('session_manager.config').AutoloadMode.Disabled,
})
