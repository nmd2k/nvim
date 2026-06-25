return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		highlight_visible = false,
		auto_hide = true,
		insert_at_start = false,
		separator = { left = "▎", right = "" },
		modified = { button = "●" },
	},
}
