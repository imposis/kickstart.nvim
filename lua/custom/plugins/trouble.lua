return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  keys = {
    { '<leader>q', '<cmd>TroubleToggle<CR>', desc = 'Toggle trouble' },
  },
}
