return {
  'luk400/vim-jukit',
  lazy = true,
  ft = { 'json', 'python' },
  config = function()
    require('which-key').add {
      { '<leader>j', group = '[J]ukit' },
      { '<leader>j_', hidden = true },
    }

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Key mappings with descriptions
    map('n', '<leader>js', '<Cmd>call jukit#send#line()<CR>', vim.tbl_extend('force', opts, { desc = 'Send line to REPL' }))
    map('n', '<leader>jos', '<Cmd>call jukit#splits#output()<CR>', vim.tbl_extend('force', opts, { desc = 'Split output' }))
    map('v', '<leader>js', '<Esc><Cmd>call jukit#send#selection()<CR>', vim.tbl_extend('force', opts, { desc = 'Send selection to REPL' }))
    map('n', '<leader>jepr', "<Cmd>call jukit#convert#save_nb_to_file(1,1,'pdf')<CR>", vim.tbl_extend('force', opts, { desc = 'Save to pdf (rerun cells)' }))
    map('n', '<leader>jehr', "<Cmd>call jukit#convert#save_nb_to_file(1,1,'html')<CR>", vim.tbl_extend('force', opts, { desc = 'Save to html (rerun cells)' }))
    map('n', '<leader>jep', "<Cmd>call jukit#convert#save_nb_to_file(0,1,'pdf')<CR>", vim.tbl_extend('force', opts, { desc = 'Save to pdf' }))
    map('n', '<leader>jeh', "<Cmd>call jukit#convert#save_nb_to_file(0,1,'html')<CR>", vim.tbl_extend('force', opts, { desc = 'Save to html' }))
    map('n', '<leader>jnp', "<Cmd>call jukit#convert#notebook_convert('jupyter-notebook')<CR>", vim.tbl_extend('force', opts, { desc = 'Convert py/ipynb' }))
    map('n', '<leader>K', '<Cmd>call jukit#cells#jump_to_previous_cell()<CR>', vim.tbl_extend('force', opts, { desc = 'Jump to previous cell' }))
    map('n', '<leader>J', '<Cmd>call jukit#cells#jump_to_next_cell()<CR>', vim.tbl_extend('force', opts, { desc = 'Jump to next cell' }))
    map('n', '<leader>jda', '<Cmd>call jukit#cells#delete_outputs(1)<CR>', vim.tbl_extend('force', opts, { desc = 'Delete cell output' }))
    map('n', '<leader>jdo', '<Cmd>call jukit#cells#delete_outputs(0)<CR>', vim.tbl_extend('force', opts, { desc = 'Delete cell output' }))
    map('n', '<leader>jcj', '<Cmd>call jukit#cells#move_down()<CR>', vim.tbl_extend('force', opts, { desc = 'Move down' }))
    map('n', '<leader>jck', '<Cmd>call jukit#cells#move_up()<CR>', vim.tbl_extend('force', opts, { desc = 'Move up' }))
    map('n', '<leader>jcm', '<Cmd>call jukit#cells#merge_below()<CR>', vim.tbl_extend('force', opts, { desc = 'Merge below' }))
    map('n', '<leader>jcM', '<Cmd>call jukit#cells#merge_above()<CR>', vim.tbl_extend('force', opts, { desc = 'Merge above' }))
    map('n', '<leader>jcT', '<Cmd>call jukit#cells#create_above(1)<CR>', vim.tbl_extend('force', opts, { desc = 'Create text cell above' }))
    map('n', '<leader>jct', '<Cmd>call jukit#cells#create_below(1)<CR>', vim.tbl_extend('force', opts, { desc = 'Create text cell below' }))
    map('n', '<leader>jcO', '<Cmd>call jukit#cells#create_above(0)<CR>', vim.tbl_extend('force', opts, { desc = 'Create code cell above' }))
    map('n', '<leader>jco', '<Cmd>call jukit#cells#create_below(0)<CR>', vim.tbl_extend('force', opts, { desc = 'Create code cell below' }))
    map('n', '<leader>jcs', '<Cmd>call jukit#cells#split()<CR>', vim.tbl_extend('force', opts, { desc = 'Split cell' }))
    map('n', '<leader>jcd', '<Cmd>call jukit#cells#delete()<CR>', vim.tbl_extend('force', opts, { desc = 'Delete cell' }))
    map('n', '<leader>jall', '<Cmd>call jukit#send#all()<CR>', vim.tbl_extend('force', opts, { desc = 'Send all cells' }))
    map('n', '<leader>jcc', '<Cmd>call jukit#send#until_current_section()<CR>', vim.tbl_extend('force', opts, { desc = 'Send until current section' }))
    map('n', '<leader>jsl', '<Cmd>call jukit#layouts#set_layout()<CR>', vim.tbl_extend('force', opts, { desc = 'Set layout' }))
    map('n', '<leader>jah', '<Cmd>call jukit#splits#toggle_auto_hist()<CR>', vim.tbl_extend('force', opts, { desc = 'Toggle auto history' }))
    map('n', '<leader>jpos', '<Cmd>call jukit#ueberzug#set_default_pos()<CR>', vim.tbl_extend('force', opts, { desc = 'Ueberzug, set default pos' }))
    map('n', '<leader>jso', '<Cmd>call jukit#splits#show_last_cell_output(1)<CR>', vim.tbl_extend('force', opts, { desc = 'Show last cell output' }))
    map('n', '<leader>jk', '<Cmd>call jukit#splits#out_hist_scroll(0)<CR>', vim.tbl_extend('force', opts, { desc = 'Scroll up in history window' }))
    map('n', '<leader>jj', '<Cmd>call jukit#splits#out_hist_scroll(1)<CR>', vim.tbl_extend('force', opts, { desc = 'Scroll down in history window' }))
    map(
      'n',
      '<leader>johd',
      '<Cmd>call jukit#splits#close_output_and_history(1)<CR>',
      vim.tbl_extend('force', opts, { desc = 'Close output and history (Asked)' })
    )
    map('n', '<leader>jod', '<Cmd>call jukit#splits#close_output_split()<CR>', vim.tbl_extend('force', opts, { desc = 'Close output split' }))
    map('n', '<leader>jhd', '<Cmd>call jukit#splits#close_history()<CR>', vim.tbl_extend('force', opts, { desc = 'Close history' }))
    map('n', '<leader>johs', '<Cmd>call jukit#splits#output_and_history()<CR>', vim.tbl_extend('force', opts, { desc = 'Open output history and split' }))
    map('n', '<leader>jhs', '<Cmd>call jukit#splits#history()<CR>', vim.tbl_extend('force', opts, { desc = 'Open history split' }))
    map('n', '<leader>jts', '<Cmd>call jukit#splits#term()<CR>', vim.tbl_extend('force', opts, { desc = 'Splits terminal' }))
  end,
  init = function()
    vim.cmd [[
      augroup jukit_lazy
        autocmd!
        autocmd FileType json,python ++once lua require("lazy").load({ plugins = { "vim-jukit" } })
      augroup end
    ]]
  end,
}
