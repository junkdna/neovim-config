return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "arduino",
                    "awk_ls",
                    "bashls",
                    "bitbake_language_server",
                    "ccls",
                    "clangd",
                    "cmake",
                    "docker_language_server",
                    "eslint",
                    "jinja_ls",
                    "lua_ls",
                    "markdown-oxide",
                    "nginx_language_server",
                    "pylsp",
                    "rust_analyzer",
                    "stylua",
                    "systemd_lsp",
                    "vhdl_ls",
                    "vimls",
                    "yamlls",
                }
            })
        end
    }
}
