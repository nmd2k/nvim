require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})
require("nvim-treesitter").install({
	"lua",
	"vim",
	"python",
	"bash",
    "c",
    "cpp",
	"javascript",
	"typescript",
	"html",
	"css",
	"json",
	"rust",
	"java",
	"toml",
	"go",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"lua",
		"vim",
		"python",
		"bash",
        "c",
        "cpp",
		"javascript",
		"typescript",
		"html",
		"css",
		"json",
		"toml",
		"java",
		"toml",
		"go",
	},
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})
