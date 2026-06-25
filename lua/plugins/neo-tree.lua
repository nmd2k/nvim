return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			-- "<leader>e",
			"<C-b>",
			function()
				-- If neo-tree is already loaded and we are in it, move to editor
				if vim.bo.filetype == "neo-tree" then
					vim.cmd("Neotree close")
				else
					vim.cmd("Neotree focus")
				end
			end,
			desc = "Toggle/Close focus",
		},
	},
	opts = {
		close_if_last_window = true,
		popup_border_style = "rounded", -- Gives all neo-tree prompt menus smooth corners

		default_component_configs = {
			container = {
				enable_character_fade = true,
			},
			indent = {
				indent_size = 2,
				padding = 1,
				with_markers = true,
				indent_marker = "│",
				last_indent_marker = "└",
				highlight = "NeoTreeIndentMarker",
			},
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "󰜮",
				default = "󰈚",
				highlight = "NeoTreeFileIcon",
			},
			modified = {
				symbol = "●",
				highlight = "NeoTreeModified",
			},
			name = {
				trailing_slash = false,
				use_git_status_colors = true,
				highlight = "NeoTreeFileName",
			},
			git_status = {
				symbols = {
					-- Sleek git indicators
					added = "",
					modified = "󰏬",
					deleted = "",
					renamed = "󰁕",
					untracked = "",
					ignored = "",
					unstaged = "󰄱",
					staged = "󰱒",
					conflict = "",
				},
			},
		},
		window = {
			position = "left",
			width = "20%",
			mappings = {
				["<space>"] = "none",
				["s"] = "open_split",
				["v"] = "open_vsplit",
				["t"] = "open_tabnew",
			},
		},
	},
}
