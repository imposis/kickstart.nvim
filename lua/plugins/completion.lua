return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = 'v0.*',

    opts = {
      keymap = { preset = 'none', ['<Tab>'] = { 'select_next', 'fallback' }, ['<S-Tab>'] = { 'select_prev', 'fallback' }, ['<Enter>'] = { 'accept' } },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },
      completion = { documentation = { auto_show = true } },

      signature = { enabled = true },
    },
  },
}
