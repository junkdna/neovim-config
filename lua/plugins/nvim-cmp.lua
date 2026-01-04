return {
	{
		"hrsh7th/nvim-cmp",
        --commit = "",
		dependencies = {
            {
                "onsails/lspkind.nvim",
            },
            {
                "hrsh7th/vim-vsnip",
            },
            {
                "hrsh7th/cmp-nvim-lsp",
            },
            {
                "hrsh7th/cmp-buffer",
            },
            {
                "hrsh7th/cmp-path",
            },
            {
                "hrsh7th/cmp-cmdline",
            }
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
}
