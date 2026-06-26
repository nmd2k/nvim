require("ibl").setup({
	indent = { char = "▏" },
	scope = { enabled = false },
})

require("rainbow-delimiters.setup").setup({})
require("mini.notify").setup({
    content = {
        format = function(notif)
            return notif.msg
        end,
    }
})

local lualine = require("lualine")
-- local bar = require("barbar")

lualine.setup({
	options = {
		theme = "auto",
		component_separators = { left = " ", right = " " },
		section_separators = { left = "", right = "" },
		globalstatus = true, -- Highly recommended: single bar across all split windows
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "", right = "" }, right_padding = 2 },
		},
		lualine_b = {
			{ "branch", icon = "" },
			{ "diff", symbols = { added = " ", modified = "󰏬 ", removed = " " } },
		},
		lualine_c = {
			{ "filetype", icon_only = true, padding = { left = 1, right = 0 } },
			{ "filename", file_status = true, path = 1 }, -- 1 = relative path
		},
		lualine_x = {
			{ "diagnostics", sources = { "nvim_diagnostic" } },
			{ "encoding" },
		},
		lualine_y = { "progress" },
		lualine_z = {
			{ "location", separator = { left = "", right = "" }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
})
