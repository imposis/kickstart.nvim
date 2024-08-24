-- Non Mason managed lsps
-- This worked on a new project but broke on an old one before new configuration.
require('lspconfig').gleam.setup {}

-- Lsp functions
vim.keymap.set('n', '<leader>lse', function()
  return vim.cmd 'LspStart'
end, { desc = 'LSP [E]nable' })
vim.keymap.set('n', '<leader>lsd', function()
  return vim.cmd 'LspStop'
end, { desc = 'LSP [D]isable' })
vim.keymap.set('n', '<leader>lsi', function()
  return vim.cmd 'LspInfo'
end, { desc = 'LSP [I]nfo' })
vim.keymap.set('n', '<leader>lsl', function()
  return vim.cmd 'LspLog'
end, { desc = 'LSP [L]og' })
