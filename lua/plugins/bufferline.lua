return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		animation = true,
		insert_at_start = false,
		-- This makes it look sleek: subtle, isolated dividers
		separator = { left = "▎", right = "" },
		modified = { button = "●" },
	},
}
