return {
    {
        --"Tsuzat/NeoSolarized.nvim",
        --"shaunsingh/solarized.nvim",
         "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("config.solarized")
        end,
    },
}
