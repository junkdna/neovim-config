return {
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        config = function()
            require("config.gitsigns")
            vim.opt.signcolumn = "yes"
        end,
    }
}
