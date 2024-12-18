return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.setupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
}
