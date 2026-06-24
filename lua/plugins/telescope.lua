return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					-- initial_mode = "normal",
					preview = { filesize_limit = 0.2 },
				},
				extensions = {
					["ui-select"] = { require("telescope.themes").get_dropdown({}) },
					file_browser = {
						-- 	theme = "dropdown",
						hijack_netrw = true,
					},
				},
			})

			-- Load extensions
			telescope.load_extension("ui-select")
			telescope.load_extension("file_browser")

			-- Keymap
			-- These use 'builtin'
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
			vim.keymap.set("n", "<leader>fp", builtin.commands, { desc = "Telescope commands" })

			-- This uses the 'extensions' specifically
			vim.keymap.set(
				"n",
				"<leader>ff",
				builtin.find_files,
				{ desc = "Telescope find files" }
				-- telescope.extensions.file_browser.file_browser,
				-- { desc = "Telescope file browser" }
			)
		end,
	},
}
