return {
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          -- tokyonight
          'tokyonight-night',
          'tokyonight-storm',
          'tokyonight-day',
          'tokyonight-moon',
          -- rose-pine
          'rose-pine-main',
          'rose-pine-moon',
          'rose-pine-dawn',
          -- catppuccin
          'catppuccin-mocha',
          'catppuccin-frappe',
          'catppuccin-latte',
          -- nightfox
          'nightfox',
          'nordfox',
          'dayfox',
          'dawnfox',
          'duskfox',
          'carbonfox',
          'terafox',
          -- cyberdream
          'cyberdream',
          -- kanagawa
          'kanagawa-wave',
          'kanagawa-lotus',
          'kanagawa-dragon',
        },
        livePreview = true,
      }
    end,
    keys = {
      { '<leader>th', ':Themery<CR>', desc = 'Theme select' },
    },
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
  },
  {
    'scottmckendry/cyberdream.nvim',
    priority = 1000,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
  },
}
