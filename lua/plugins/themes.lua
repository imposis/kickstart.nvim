return {
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          'catppuccin-latte',
          'catppuccin-frappe',
          'catppuccin-mocha',
          'kanagawa-dragon',
          'kanagawa-wave',
          'kanagawa-lotus',
          'tokyonight-night',
          'tokyonight-day',
          'tokyonight-storm',
          'tokyonight-moon',
          'vim',
          'default',
          'unokai',
        },
        livePreview = true,
      }
    end,
    keys = {
      { '<leader>ts', ':Themery<CR>', desc = 'Theme select' },
      {
        '<leader>tt',
        function()
          local themery = require 'themery'

          local darkTheme = 'hc_dark'
          local lightTheme = 'hc_light'

          local currentTheme = themery.getCurrentTheme()
          if currentTheme and currentTheme.name == darkTheme then
            themery.setThemeByName(lightTheme, true)
          else
            themery.setThemeByName(darkTheme, true)
          end
        end,
        desc = 'Toggle dark/light',
      },
    },
  },
  { 'catppuccin/nvim',       name = 'catppuccin', priority = 1000 },
  { 'rebelot/kanagawa.nvim', name = 'kanagawa',   priority = 1000 },
  { 'folke/tokyonight.nvim', name = 'tokyonight', priority = 1000 },
}
