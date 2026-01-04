return {
    {
        "Tsuzat/NeoSolarized.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("config.solarized")
        end,
    },
}
