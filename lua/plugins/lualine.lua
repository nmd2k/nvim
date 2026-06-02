-- return {}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			option = {
				theme = "auto",
				-- component_separators = "",
				-- section_separators = { left = "", right = "" },
			},
			-- sections = {
			-- 	lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
			-- 	lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
			-- },
		})
	end,
}
