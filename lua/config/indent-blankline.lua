local is_ok, indent_blankline = pcall(require, "ibl")
if not is_ok then
	return
end

-- For all available options, take a look at `:help ibl.config.`
indent_blankline.setup {
    indent = {
        -- highlight = highlight,
        char = "│",
        priority = 100,
    },
    whitespace = {
        --highlight = { "Function", "Label" },
        highlight = nil,
        remove_blankline_trail = false,
    },
    scope = {
        enabled = false,
        show_start = true,
        show_end = false,
        highlight = { "Function", "Label" },
        priority = 500,
    },
}
