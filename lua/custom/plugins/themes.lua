return {
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          -- catppuccin
          'catppuccin-mocha',
          'catppuccin-frappe',
          'catppuccin-latte',
          -- nightfox
          'dayfox',
          'carbonfox',
          -- cyberdream
          'cyberdream',
          -- citruszest
          'citruszest',
          -- modus-themes
          'modus',
          -- hyper
          'hyper',
        },
        livePreview = true,
      }
    end,
    keys = {
      { '<leader>ts', ':Themery<CR>', desc = 'Theme select' },
    },
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
    'zootedb0t/citruszest.nvim',
    priority = 1000,
  },
  { 'miikanissi/modus-themes.nvim', priority = 1000 },
  { 'paulo-granthon/hyper.nvim', priority = 1000 },
}
