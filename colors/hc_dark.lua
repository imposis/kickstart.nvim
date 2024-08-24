local colors = {
  bg = '#000000', -- Pure black background
  fg = '#ffffff', -- Pure white for main text
  blue = '#007aff', -- Electric blue
  yellow = '#ffea00', -- Neon yellow
  green = '#00ff00', -- Lime green
  cyan = '#00ffff', -- Neon cyan
  magenta = '#ff00ff', -- Hot pink/magenta
  orange = '#ff5e00', -- Bright orange
}

vim.o.background = 'dark'
vim.o.termguicolors = true

local function highlight(group, color)
  local gui = 'bold' -- Adding bold styling for extra emphasis
  local sp = color.sp or 'NONE'
  vim.cmd(string.format('hi %s guifg=%s guibg=%s gui=%s guisp=%s', group, color.fg or 'NONE', color.bg or 'NONE', gui, sp))
end

highlight('Normal', { fg = colors.fg, bg = colors.bg })
highlight('Comment', { fg = colors.green, gui = 'italic,bold' }) -- Bold and italic for comments
highlight('Constant', { fg = colors.orange })
highlight('Identifier', { fg = colors.blue })
highlight('Statement', { fg = colors.yellow })
highlight('PreProc', { fg = colors.magenta })
highlight('Type', { fg = colors.magenta })
highlight('Function', { fg = colors.cyan })
highlight('String', { fg = colors.green })
highlight('Keyword', { fg = colors.yellow })
highlight('Error', { fg = colors.bg, bg = colors.yellow }) -- Bright yellow background for errors
highlight('Todo', { fg = colors.blue, bg = colors.magenta }) -- Contrasting colors for TODOs

-- Add more highlights as needed
