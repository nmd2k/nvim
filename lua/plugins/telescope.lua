local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "%.git/" },
		-- layout_strategy = "vertical",
	},
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
		},
		live_grep = {
			additional_args = function()
				return { "--glob", "!**/.git/*", "--glob", "!**/go.sum", "--glob", "!**/go.mod" }
			end,
		},
		lsp_definitions = {
			show_line = false,
			theme = "dropdown",
			file_ignore_patterns = { ".*_templ.go" },
		},
		lsp_references = {
			show_line = false,
			include_declaration = false,
			theme = "dropdown",
			file_ignore_patterns = { ".*_templ.go" },
		},
	},
	extensions = {
		file_browser = {
			hijack_netrw = true,
			hidden = true,
            preview = true,
			-- display_stat = false,
		},
        ["ui-select"] = {
            require("telescope.themes").get_dropdown()
        }
        -- Optional, require build fzf
		-- fzf = {
		-- 	fuzzy = true,
		-- 	overrid_generic_sorter = true,
		-- 	overrid_file_sorter = true,
		-- 	case_mode = "smart_case",
		-- },
	},
})

-- telescope.load_extension("fzf")
telescope.load_extension("file_browser")
telescope.load_extension("ui-select")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
-- open file_browser with the path of the current buffer
vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
