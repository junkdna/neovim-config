require('nvim-treesitter').setup {
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = {
        "all",
    },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    modules = {},
    highlight = { enable = true }
}
