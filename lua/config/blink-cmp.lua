require('blink.cmp').setup {
    keymap = {
        preset = "default",
        -- ["<C-u>"] = { "scroll_signature_up", "scroll_documentation_up", "fallback" },
        -- ["<C-d>"] = { "scroll_signature_down", "scroll_documentation_down", "fallback" },
        -- --
        -- -- -- default in all keymap presets
        -- ["<C-k>"] = { "snippet_forward", "fallback" },
        -- ["<C-h>"] = { "snippet_backward", "show_signature", "hide_signature", "fallback" },
        -- ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        -- ["<C-e>"] = { "hide", "fallback" },
        -- ["<C-y>"] = { "select_and_accept", "fallback" },

        -- ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
        -- ["<C-n>"] = { "select_next", "fallback_to_mappings" },

        -- ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        -- ["<C-f>"] = { "scroll_documentation_down", "fallback" },

        -- ["<C-k>"] = false,
        -- ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
    },
    snippets = { preset = "luasnip" },
    completion = {
        accept = { auto_brackets = { enabled = false }, },
        documentation = { auto_show = true, },
        menu = {
            -- nvim-cmp style menu
            draw = {
                columns = {
                    { "label", "label_description", gap = 1 },
                    { "kind_icon", "kind" },
                },
            },
        },
    },
    appearance = {
        nerd_font_variant = "mono", -- mono or normal
    },
    signature = { enabled = true },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' }, },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
}
