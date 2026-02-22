return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  keys = {
    { 'tr', ':NvimTreeToggle<CR>', desc = 'Toggle Nvim Tree' },
    { 'tf', ':NvimTreeFocus<CR>', desc = 'Focus on Nvim Tree' },
  },

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
  end,
}
