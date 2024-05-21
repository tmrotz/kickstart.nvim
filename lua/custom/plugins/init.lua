-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    lazy = true,
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'catppuccin'

      vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#6e738d', bold = true })
      vim.api.nvim_set_hl(0, 'LineNr', { fg = '#b4befe', bold = true })
      vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#6e738d', bold = true })

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'ThePrimeagen/harpoon',
    requires = { 'nvim-lua/plenary.nvim' },
    branch = 'harpoon2',
  },

  {
    'tris203/hawtkeys.nvim',
    config = true,
  },

  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    keys = {
      { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
    },
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    },
  },

  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },

  {
    'tpope/vim-fugitive',
  },
}
