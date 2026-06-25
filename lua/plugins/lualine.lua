return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	options = {
		disabled_filetypes = {
			statusline = { "nofile", "prompt", "gui2", "ui2" },
			winbar = { "nofile", "prompt", "gui2", "ui2" },
		},
		globalstatus = true,
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				-- Use subtle blank space or fine bars between inner components
				component_separators = { left = " ", right = " " },
				section_separators = { left = "", right = "" },
				globalstatus = true, -- Highly recommended: single bar across all split windows
			},
			sections = {
				-- Left Side: Mode (rounded left cap)
				lualine_a = {
					{ "mode", separator = { left = "", right = "" }, right_padding = 2 },
				},

				-- Git status & branching
				lualine_b = {
					{ "branch", icon = "" },
					{ "diff", symbols = { added = " ", modified = "󰏬 ", removed = " " } },
				},

				-- File info with nice icons
				lualine_c = {
					{ "filetype", icon_only = true, padding = { left = 1, right = 0 } },
					{ "filename", file_status = true, path = 1 }, -- 1 = relative path
				},

				-- Right Side: Noice / Macros & Utilities
				lualine_x = {
					-- {
					-- 	-- require("noice").api.status.command.get,
					-- 	-- cond = require("noice").api.status.command.has,
					-- 	color = { fg = "#ff9e3b" }, -- Subtle amber pop for active macro recording/commands
					-- },
					{ "diagnostics", sources = { "nvim_diagnostic" } },
					{ "encoding" },
				},

				-- File progress (percentage)
				lualine_y = { "progress" },

				-- Location / Cursor line info (rounded right cap)
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
	end,
}
