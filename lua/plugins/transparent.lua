return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      extra_groups = {
        "WildMenu", 'NeoTreeNormal', 'NeoTreeNormalNC', 'NeoTreeEndOfBuffer', 'NeoTreeWinSeparator',
        -- BufferLine (if you use it)
        "BufferLine", "TabLine", 'BufferLineFill', 'BufferLineBackground', 'BufferLineSeparator',
        -- lualine groups (you may need to adjust depending on lualine sections)
        "StatusLine", "StatusLineNC", "lualine", 'lualine_c_normal', 'lualine_c_insert', 'lualine_c_visual',
        'lualine_c_replace',
        'lualine_a_normal', 'lualine_a_insert', 'lualine_a_visual', 'lualine_a_replace',
        'lualine_b_normal', 'lualine_b_insert', 'lualine_b_visual', 'lualine_b_replace',
        'lualine_x_normal', 'lualine_x_insert', 'lualine_x_visual', 'lualine_x_replace',
        -- Terminal groups
        "Term*", "winblend", 'TermNormal', 'TermNormalNC', "NormalFloat", "FloatBorder"
      }
    })
  end
}
