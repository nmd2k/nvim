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

	config = function()
		require("neo-tree").setup({
			window = {
				width = "20%",
				mappings = {
					["s"] = "open_split",
					["v"] = "open_vsplit",
					["t"] = "open_tabnew",
				},
			},
		})
	end,
}
