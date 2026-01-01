return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		--branch = "main",
        tag = "v0.10.0",
		config = function()
			require("config.nvim-treesitter")
		end,
	},
	-- Nvim-treesitter text objects
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
        commit = "ed373482db797bbf71bdff37a15c7555a84dce47",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = function()
			require("config.nvim-treesitter-textobjects")
		end,
	},
}
