-- nest.nvim setup
local nest_ok, nest = pcall(require, 'nest')
if not nest_ok then
  return
end

nest.applyKeymaps({
  mode = 'n',
  prefix = '<leader>',

  -- Buffer keymaps
  {
    'b',
    {
      { 'c', '<Cmd>close<CR>' },
      { 'w', '<Cmd>bd!<CR>' },
      { 'D', '<Cmd>%bd|e#|bd#<CR>' },
      { '1', '<Cmd>BufferGoto 1<CR>' },
      { '2', '<Cmd>BufferGoto 2<CR>' },
      { '3', '<Cmd>BufferGoto 3<CR>' },
      { '4', '<Cmd>BufferGoto 4<CR>' },
      { '5', '<Cmd>BufferGoto 5<CR>' },
      { '6', '<Cmd>BufferGoto 6<CR>' },
      { '7', '<Cmd>BufferGoto 7<CR>' },
      { '8', '<Cmd>BufferGoto 8<CR>' },
      { '9', '<Cmd>BufferGoto 9<CR>' },
    },
  },

  -- trouble.nvim
  {
    'x',
    {
      { 'x', '<Cmd>TroubleToggle<CR>' },
      { 'w', '<Cmd>TroubleToggle workspace_diagnostics<CR>' },
      { 'd', '<Cmd>TroubleToggle document_diagnostics<CR>' },
      { 'q', '<Cmd>TroubleToggle quickfix<CR>' },
      { 'l', '<Cmd>TroubleToggle loclist<CR>' },
      { 'r', '<Cmd>TroubleToggle lsp_references<CR>' },
    },
  },

  -- hop.nvim
  {
    'h',
    {
      { 'b', '<Cmd>HopWordBC<CR>' },
      { 'w', '<Cmd>HopWordAC<CR>' },
      { 'j', '<Cmd>HopLineAC<CR>' },
      { 'k', '<Cmd>HopLineBC<CR>' },
      {
        mode = 'v',
        { 'b', '<Cmd>HopWordBC<CR>' },
        { 'w', '<Cmd>HopWordAC<CR>' },
        { 'j', '<Cmd>HopLineAC<CR>' },
        { 'k', '<Cmd>HopLineBC<CR>' },
      },
    },
  },

  -- packer.nvim
  {
    'p',
    {
      { 'i', '<Cmd>PackerInstall<CR>' },
      { 'c', '<Cmd>PackerClean<CR>' },
      { 'C', '<Cmd>PackerCompile<CR>' },
      { 'p', '<Cmd>PackerProfile<CR>' },
      { 's', '<Cmd>PackerSync<CR>' },
      { 'S', '<Cmd>PackerStatus<CR>' },
      { 'u', '<Cmd>PackerUpdate<CR>' },
    },
  },

  -- telescope.nvim
  {
    'f',
    {
      { 'f', '<Cmd>Telescope find_files<CR>' },
      { 'e', '<Cmd>Telescope file_browser<CR>' },
      { 'g', '<Cmd>Telescope live_grep<CR>' },
      { 'b', '<Cmd>Telescope buffers<CR>' },
      { 'h', '<Cmd>Telescope help_tags<CR>' },
    },
  },

  -- neogit
  {
    'g',
    {
      { 'o', '<Cmd>Neogit kind=split<CR>' },
      { 'c', '<Cmd>Neogit commit kind=split<CR>' },
    },
  },

  -- toggleterm.nvim
  {
    't',
    {
      { 't', '<Cmd>ToggleTerm<CR>' },
      { 'f', '<Cmd>ToggleTerm direction=float<CR>' },
    },
  },
})
