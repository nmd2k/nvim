return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "lua", "python", "vim", "yaml", "markdown", "vimdoc", "markdown_inline" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
