return {
  'antoinemadec/vim-verilog-instance',
  init = function()
    vim.g.verilog_instance_skip_last_coma = 1 -- Skip trailing comma on last port
  end,
  config = function()
    -- Register which-key group for verilog instance keymaps
    require('which-key').add {
      { 'gb', group = 'Verilog Instance' },
    }
  end,
}
