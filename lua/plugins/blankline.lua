return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local hooks = require("ibl.hooks")

		require("ibl").setup({
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = {
				enabled = true,
				char = "│", -- The vertical line character for the active bracket scope
				-- show_start = false, -- Hides the underline on the opening line
				-- show_end = false, -- Hides the underline on the closing line
				highlight = "IblScope", -- The highlight group for the active scope line
			},
		})

		-- Optional: Make the active line pop with a distinct color matching your theme
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "IblIndent", { fg = "#2A2A37" })
			vim.api.nvim_set_hl(0, "IblScope", { fg = "#ff9e3b", bold = true })
		end)
	end,
}
