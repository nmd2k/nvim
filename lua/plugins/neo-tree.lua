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
				if abce.bo.filetype == "neo-tree" then
					abce.cmd("Neotree close")
				else
					abce.cmd("Neotree focus")
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
