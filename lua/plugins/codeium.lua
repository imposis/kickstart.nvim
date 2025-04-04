return {
  'Exafunction/codeium.vim',
  config = function()
    vim.keymap.set('i', '<M-a>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-]>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-[>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })
    vim.keymap.set('n', '<leader>lce', function()
      return vim.fn['CodeiumEnable']()
    end, { desc = 'Codeium Enable' })
    vim.keymap.set('n', '<leader>lcd', function()
      return vim.fn['CodeiumDisable']()
    end, { desc = 'Codeium Disable' })

    vim.g.codeium_enabled = false
  end,
}
