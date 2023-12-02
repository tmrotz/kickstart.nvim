-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
      vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e738d", bold = true })
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#b4befe", bold = true })
      vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e738d", bold = true })
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function(_, opts)
      -- Other blankline configuration here
      return require("indent-rainbowline").make_opts(opts)
    end,
    dependencies = {
      "TheGLander/indent-rainbowline.nvim",
    },
  },
}

