return {
	-- -- "catppuccin/nvim",
	-- name = "catppuccin",
	"projekt0n/github-nvim-theme",
	name = "github-theme",
	lazy = false,
	config = function()
		vim.cmd("colorscheme github_dark")
		-- vim.cmd.colorscheme "catppuccin"
	end,
}
