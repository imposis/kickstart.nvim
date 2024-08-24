local colors = {
  bg = '#fdfdfd', -- Soft beige, Solarized-inspired background
  fg = '#000000', -- Dark gray for main text
  blue = '#268bd2', -- Solarized-like vibrant blue
  yellow = '#b58900', -- Warm yellow
  teal = '#00796b', -- Teal for comments (replacing green)
  turquoise = '#00bcd4', -- Bright turquoise for functions (replacing cyan)
  purple = '#9b59b6', -- Rich purple for types (replacing magenta)
  orange = '#cb4b16', -- Vibrant orange
}

vim.o.background = 'light'
vim.o.termguicolors = true

local function highlight(group, color)
  local gui = 'bold' -- Adding bold for emphasis
  local sp = color.sp or 'NONE'
  vim.cmd(string.format('hi %s guifg=%s guibg=%s gui=%s guisp=%s', group, color.fg or 'NONE', color.bg or 'NONE', gui, sp))
end

highlight('Normal', { fg = colors.fg, bg = colors.bg })
highlight('Comment', { fg = colors.teal, gui = 'italic,bold' }) -- Italic and bold for comments
highlight('Constant', { fg = colors.orange })
highlight('Identifier', { fg = colors.blue })
highlight('Statement', { fg = colors.yellow })
highlight('PreProc', { fg = colors.purple }) -- Purple for PreProc (replacing magenta)
highlight('Type', { fg = colors.purple }) -- Purple for Type
highlight('Function', { fg = colors.yellow })
highlight('String', { fg = colors.teal }) -- Teal for strings
highlight('Keyword', { fg = colors.yellow })
highlight('Error', { fg = colors.bg, bg = colors.yellow }) -- Yellow background for errors
highlight('Todo', { fg = colors.blue, bg = colors.purple }) -- High-contrast colors for TODOs
highlight('LspSignatureActiveParameter', { fg = colors.yellow })
-- Add more highlights as needed
