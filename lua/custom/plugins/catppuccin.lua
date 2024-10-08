return {
  'catppuccin/nvim',
  enabled = false,
  name = 'catppuccin',
  priority = 1000,
  opts = {
    flavour = 'macchiato', -- latte, frappe, macchiato, mocha
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.cmd.colorscheme 'catppuccin'
  end,
}
