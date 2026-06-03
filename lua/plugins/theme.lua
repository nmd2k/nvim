return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "frappe", -- latte, frappe, macchiato, mocha
			background = {
				light = "latte",
				dark = "frappe",
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,

	-- "projekt0n/github-nvim-theme",
	-- name = "github-theme",
	-- lazy = false,
	-- config = function()
	-- vim.cmd("colorscheme github_dark")
	-- end,
}
