return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,
  keys = {
    { '<A-i>', ':ToggleTerm direction=float<CR>', desc = 'ToggleTerm float' },
    { '<A-h>', ':ToggleTerm direction=horizontal<CR>', desc = 'ToggleTerm horizontal' },
    { '<A-v>', ':ToggleTerm size=80 direction=vertical<CR>', desc = 'ToggleTerm vertical' },
  },
}
