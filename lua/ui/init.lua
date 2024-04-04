return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("ui.catppuccin")
      local color = color or "catppuccin"
      vim.cmd.color(color)
    end,
  },
  {
    "akinsho/bufferline.nvim",
    event = "UIEnter",
    keys = function()
      return require("spare.config.keymaps").bufferline
    end,
    config = function()
      require("bufferline").setup({})
    end,
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   event = "UIEnter",
  --   enabled = false,
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   config = function()
  --     vim.opt.laststatus = 2
  --     require("ui.lualine")
  --   end,
  -- },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "UIEnter",
    config = function()
      require("ui.indent-blankline")
    end,
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      require("ui.alpha")
    end,
  },
  {
    "rebelot/heirline.nvim",
    -- You can optionally lazy-load heirline on UiEnter
    -- to make sure all required plugins and colorschemes are loaded before setup
    -- event = "UiEnter",
    config = function()
      require("ui.heirline")
    end
  },
}
