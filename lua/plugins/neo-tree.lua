return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			"<C-b>",
			":Neotree filesystem position=left<CR>",
			desc = "Open file explorer",
		},
		{
			"<leader>e",
			function()
				-- If neo-tree is already loaded and we are in it, move to editor
				if vim.bo.filetype == "neo-tree" then
					vim.cmd.wincmd("l")
				else
					vim.cmd("Neotree focus")
				end
			end,
			desc = "Toggle focus",
		},
	},

	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["s"] = "open_split",
					["v"] = "open_vsplit",
					["t"] = "open_tabnew",
				},
			},
		})
	end,
}
