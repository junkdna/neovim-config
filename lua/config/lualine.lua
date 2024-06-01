local is_ok, lualine = pcall(require, "lualine")
if not is_ok then
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "solarized",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = false,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	-- Lualine has sections as shown below.
	-- +-------------------------------------------------+
	-- | A | B | C                             X | Y | Z |
	-- +-------------------------------------------------+
	-- Each sections holds its components
	sections = {
		lualine_a = {
			"branch",
			"diff",
			"diagnostics",
		},
		lualine_b = {
			{
				"filename",
				file_status = true, -- Displays file status (readonly status, modified status)
				-- Path configurations
				-- 0: Just the filename
				-- 1: Relative path
				-- 2: Absolute path
				-- 3: Absolute path, with tilde as the home directory
				-- 4: Filename and parent dir, with tilde as the home directory
				path = 0,
				shorting_target = 40, -- Shortens path to leave 40 spaces in the window
			},
		},
		lualine_c = {},
		lualine_x = { "encoding", "filesize", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_c = {},
		lualine_b = {},
		lualine_a = {
            {
                "filename",
                path = 0,
                shorting_target = 40,
            }
        },
		lualine_z = { "location" },
		lualine_y = {},
		lualine_x = {},
	},
	tabline = {
        lualine_c = {},
        lualine_b = {},
        lualine_a = {
            {
                "tabs",
                path=1,
                mode=2,
                use_mode_colors = true,
                show_modified_status = true,
                tabs_max_legth = 24,
                max_length = vim.o.columns,
                symbols = {
                    modified = '',  -- Text to show when the file is modified.
                },
            }
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
