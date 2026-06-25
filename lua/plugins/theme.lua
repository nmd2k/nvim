return {
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "rebelot/kanagawa.nvim", name = "kanagawa" },
	{ "folke/tokyonight.nvim", name = "tokyonight" },
	{ "ellisonleao/gruvbox.nvim", name = "gruvbox" },
	{ "projekt0n/github-nvim-theme", name = "github" },

	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-frappe")

			require("catppuccin").setup({
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = { "italic" },
					keywords = { "italic" },
				},
			})
		end,
	},
}
