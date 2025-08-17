return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.keymap.set(
			"n",
			"<C-b>",
			":Neotree filesystem position=left<CR>",
			{ desc = "Open file explorer at the left" }
		)
		vim.keymap.set("n", "<leader>e", function()
			if vim.bo.filetype == "neo-tree" then
				-- if inside neo-tree, go right (to editor)
				vim.cmd.wincmd("l")
			else
				-- if in editor, open/toggle neo-tree
				vim.cmd("Neotree focus")
			end
		end, { desc = "Toggle focus between explorer and editor" })
		local neotree = require("neo-tree")
		neotree.setup({
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
