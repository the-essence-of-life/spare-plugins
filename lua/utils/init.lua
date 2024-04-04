return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = "UIEnter",
		dependencies = {
			"HiPhish/nvim-ts-rainbow2",
			"windwp/nvim-ts-autotag",
		},
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("utils.treesitter")
			-- require("nvim-ts-autotag").setup()
		end,
	},
	{
		"folke/noice.nvim",
		config = function()
			require("utils.noice")
		end,
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	{
		"folke/persistence.nvim",
		event = "VeryLazy", -- this will only start session saving when an actual file was opened
		-- module = "persistence",
		config = function()
			require("utils.persistence")
		end,
	},
  {
    "m4xshen/autoclose.nvim",
    event = "InsertEnter",
    config = function()
      require("tools.autoclose")
    end,
  },
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		config = true,
	},
	{
		"ThePrimeagen/harpoon",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("utils.harpoon")
		end,
	},
}
