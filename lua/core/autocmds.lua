-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Verilog/SystemVerilog: use 2-space indentation
vim.api.nvim_create_autocmd('FileType', {
  desc = 'Use 2-space indentation for Verilog/SystemVerilog',
  group = vim.api.nvim_create_augroup('verilog-indent', { clear = true }),
  pattern = { 'verilog', 'systemverilog' },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- vim: ts=2 sts=2 sw=2 et
