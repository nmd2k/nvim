return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"clangd",
					"rust_analyzer",
				},
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua", -- Lua formatter
					"isort", -- Python import sorter
					"black", -- Python formatter (or use ruff)
					-- "rustfmt", -- Rust formatter
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Lua
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("lua_ls")

			-- Python
			vim.lsp.config("pyright", {
				capabilities = capabilities,
				settings = {
					python = {
						analysis = {
							typeCheckingMode = "basic",
							diagnosticMode = "openFilesOnly",
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
							exclude = { "**/venv", "**/__pycache__" },
						},
					},
				},
			})
			vim.lsp.enable("pyright")
			vim.lsp.inlay_hint.enable(true)

			local set = vim.keymap.set
			set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
			set("n", "gd", require("telescope.builtin").lsp_definitions, { desc = "Go to Definitions" })
			set("n", "grr", require("telescope.builtin").lsp_references, { desc = "Go to References" })
		end,
	},
}
