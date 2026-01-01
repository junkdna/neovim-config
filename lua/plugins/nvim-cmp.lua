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
                "neovim/nvim-lspconfig",
            },
            {
                "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
            },
            {
                "hrsh7th/cmp-buffer", -- buffer auto-completion
            },
            {
                "hrsh7th/cmp-path", -- path auto-completion
            },
            {
                "hrsh7th/cmp-cmdline", -- cmdline auto-completion
            }
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
}
