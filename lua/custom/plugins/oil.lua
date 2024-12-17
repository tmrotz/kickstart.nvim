return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.setupOpts
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
}
