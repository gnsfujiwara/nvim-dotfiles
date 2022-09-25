-- which-key.nvim setup
local which_key_ok, which_key = pcall(require, 'which-key')
if not which_key_ok then
  return
end

which_key.setup()

-- Normal mode keybindings
which_key.register({
  b = {
    name = 'Buffer',
    c = { '<Cmd>close<CR>', 'Close window' },
    w = { '<Cmd>bd!<CR>', 'Close buffer' },
    D = { '<Cmd>%bd|e#|bd#<CR>', 'Close all' },
    ['1'] = { '<Cmd>BufferLineGoToBuffer 1<CR>', 'Go to Buffer 1' },
    ['2'] = { '<Cmd>BufferLineGoToBuffer 2<CR>', 'Go to Buffer 2' },
    ['3'] = { '<Cmd>BufferLineGoToBuffer 3<CR>', 'Go to Buffer 3' },
    ['4'] = { '<Cmd>BufferLineGoToBuffer 4<CR>', 'Go to Buffer 4' },
    ['5'] = { '<Cmd>BufferLineGoToBuffer 5<CR>', 'Go to Buffer 5' },
    ['6'] = { '<Cmd>BufferLineGoToBuffer 6<CR>', 'Go to Buffer 6' },
    ['7'] = { '<Cmd>BufferLineGoToBuffer 7<CR>', 'Go to Buffer 7' },
    ['8'] = { '<Cmd>BufferLineGoToBuffer 8<CR>', 'Go to Buffer 8' },
    ['9'] = { '<Cmd>BufferLineGoToBuffer 9<CR>', 'Go to Buffer 9' },
  },
  x = {
    name = 'Trouble',
    x = { '<Cmd>Trouble<CR>', 'Open' },
    w = { '<Cmd>Trouble workspace_diagnostics<CR>', 'Workspace diagnostics' },
    d = { '<Cmd>Trouble document_diagnostics<CR>', 'Document diagnostics' },
    q = { '<Cmd>TroubleToggle quickfix<CR>', 'Quick Fix' },
    l = { '<Cmd>TroubleToggle loclist<CR>', 'Loclist' },
    r = { '<Cmd>TroubleToggle lsp_references<CR>', 'LSP references' },
  },
  h = {
    name = 'Hop',
    w = { '<Cmd>HopWordAC<CR>', 'Jump to word after cursor' },
    b = { '<Cmd>HopWordBC<CR>', 'Jump to word before cursor' },
    j = { '<Cmd>HopLineAC<CR>', 'Jump to line after cursor' },
    k = { '<Cmd>HopLineBC<CR>', 'Jump to line before cursor' },
  },
  p = {
    name = 'Plugins',
    i = { '<Cmd>PackerInstall<CR>', 'Install' },
    c = { '<Cmd>PackerClean<CR>', 'Clean' },
    C = { '<Cmd>PackerCompile<CR>', 'Compile' },
    p = { '<Cmd>PackerProfile<CR>', 'Profile' },
    s = { '<Cmd>PackerSync<CR>', 'Sync' },
    S = { '<Cmd>PackerStatus<CR>', 'Status' },
    u = { '<Cmd>PackerUpdate<CR>', 'Update' },
  },

  f = {
    name = 'Telescope',
    f = { '<Cmd>Telescope find_files<CR>', 'Find files' },
    e = { '<Cmd>Telescope file_browser<CR>', 'File explorer' },
    g = { '<Cmd>Telescope live_grep<CR>', 'Find word' },
    b = { '<Cmd>Telescope buffers<CR>', 'List buffers' },
    r = { '<Cmd>Telescope frecency<CR>', 'Recent files' },
    h = { '<Cmd>Telescope help_tags<CR>', 'Help tags' },
  },
  g = {
    name = 'Git',
    o = { '<Cmd>Neogit<CR>', 'Open Neogit' },
    c = { '<Cmd>Neogit commit<CR>', 'Commit' },
    p = { '<Cmd>Neogit pull<CR>', 'Pull' },
    P = { '<Cmd>Neogit push<CR>', 'Push' },
  },
  t = {
    name = 'Terminal',
    t = { '<Cmd>ToggleTerm<CR>', 'Open terminal' },
    f = { '<Cmd>ToggleTerm direction=float<CR>', 'Open floating terminal' },
  },
  n = {
    name = 'NvimTree',
    t = { '<Cmd>NvimTreeToggle<CR>', 'Open/Close tree file explorer' },
    f = { '<Cmd>NvimTreeFocus<CR>', 'Focus tree file explorer' },
    s = { '<Cmd>NvimTreeFindFile<CR>', 'Find file with tree file explorer' },
    c = { '<Cmd>NvimTreeCollapse<CR>', 'Collapse all directories' },
  },
  s = {
    name = 'Session',
    s = { '<Cmd>SessionManager save_current_session<CR>', 'Save current session' },
    l = { '<Cmd>SessionManager load_last_session<CR>', 'Load last session' },
    d = { '<Cmd>SessionManager load_current_dir_session<CR>', 'Load current dir session' },
    r = { '<Cmd>SessionManager delete_session<CR>', 'Delete session' },
    o = { '<Cmd>SessionManager load_session<CR>', 'Load session' },
  },
}, { prefix = '<leader>', mode = 'n' })

-- Visual mode keybindigs
which_key.register({
  h = {
    name = 'Hop',
    w = { '<Cmd>HopWordAC<CR>', 'Jump to word after cursor' },
    b = { '<Cmd>HopWordBC<CR>', 'Jump to word before cursor' },
    j = { '<Cmd>HopLineAC<CR>', 'Jump to line after cursor' },
    k = { '<Cmd>HopLineBC<CR>', 'Jump to line before cursor' },
  },
}, { prefix = '<leader>', mode = 'v' })
