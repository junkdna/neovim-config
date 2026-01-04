return {
    {
        "nvim-lualine/lualine.nvim",
        commit = "47f91c416daef12db467145e16bed5bbfe00add8",
        dependencies = {
            "nvim-tree/nvim-web-devicons",

        },
        config = function()
            require("config.lualine")
        end,
    }
}
