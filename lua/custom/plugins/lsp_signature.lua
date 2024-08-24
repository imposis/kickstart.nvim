return {
  'ray-x/lsp_signature.nvim',
  event = 'InsertEnter',
  opts = {
    bind = true,
    handler_opts = {
      border = 'rounded',
    },
    hint_enable = false,
    hint_scheme = 'String',
    hi_parameter = 'LspSignatureActiveParameter',
    hint_prefix = '',
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
