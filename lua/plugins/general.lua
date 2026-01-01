return {
    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.o.background = 'dark'
            vim.cmd.colorscheme 'solarized'
        end,
    },{
        "NeogitOrg/neogit",
        tag = "v3.0.0",
        lazy = true,
        dependencies = {
            {
                "nvim-lua/plenary.nvim",
                commit = "b9fd5226c2f76c951fc8ed5923d85e4de065e509"
            },
            {
                "sindrets/diffview.nvim",
                commit = "4516612fe98ff56ae0415a259ff6361a89419b0a"
            },
            {
                "nvim-telescope/telescope.nvim",
                tag = "v0.2.1"
            },
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
        }
    }
    }, {
        "nvim-lualine/lualine.nvim",
        commit = "47f91c416daef12db467145e16bed5bbfe00add8",
        dependencies = {
            "nvim-tree/nvim-web-devicons",

        },
        config = function()
            require("config.lualine")
        end,
    },
}
