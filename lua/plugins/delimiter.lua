return {
	"hiphish/rainbow-delimiters.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("rainbow-delimiters.setup").setup({})
	end,
}
