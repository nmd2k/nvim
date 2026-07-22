require("mason").setup()

require("mason-tool-installer").setup({
	ensure_installed = {
        -- Lua
		"lua_ls",
		"stylua",
        -- Python
        "pyright",
        -- Rust
        "rust_analyzer",
        "ruff",
        -- C/C++
        "clangd",
	},
})

require("mason-lspconfig").setup({
	automatic_enable = true,
})

-- conform: formatter
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff" },
		rust = { "rustfmt" },
		c = { "clang-format" },
		cpp = { "clang-format" },
	},
})

-- Native Neovim LSP
vim.lsp.enable({
	"lua_ls",
	"pyright",
	"rust_analyzer",
	"clangd",
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", { capabilities = capabilities })
vim.lsp.inlay_hint.enable(true)

-- LSP Config for each PL
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
			hint = { enable = true },
		},
	},
})
vim.lsp.config("html", { filetypes = { "html", "htmldjango", "templ" } })
vim.lsp.config("rust_analyzer", {
	cmd = { "rust-analyzer" },
	settings = {
		["rust-analyzer"] = {
			files = { watcher = "server" },
			cargo = { targetDir = true },
			check = { command = "clippy" },
			inlayHints = {
				bindingModeHints = { enabled = true },
				closureCaptureHints = { enabled = true },
				closureReturnTypeHints = { enable = "always" },
				maxLength = 100,
			},
			rustc = { source = "discover" },
		},
	},
	root_markers = { { "Config.toml" }, ".git" },
})

-- Diagnostic of LSP
vim.diagnostic.config({
	severity_sort = true,
	update_in_insert = false,
	float = {
		border = "rounded",
		source = "if_many",
	},
	underline = true,
	virtual_text = {
		spacing = 2,
		source = "if_many",
		prefix = "●",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "E",
			[vim.diagnostic.severity.WARN] = "W",
			[vim.diagnostic.severity.INFO] = "I",
			[vim.diagnostic.severity.HINT] = "H",
		},
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
		end

		map("n", "K", vim.lsp.buf.hover, "LSP Hover")
		map("n", "grn", vim.lsp.buf.rename, "Rename symbol")
		map({ "n", "v" }, "gra", vim.lsp.buf.code_action, "Code action")

		map("n", "grd", function()
			require("telescope.builtin").lsp_definitions()
		end, "Go to Definition")
		map("n", "gri", function()
			require("telescope.builtin").lsp_implementations()
		end, "Go to Implementation")
		map("n", "grr", function()
			require("telescope.builtin").lsp_references()
		end, "Go to References")
		map("n", "gO", function()
			require("telescope.builtin").lsp_document_symbols({ layout_strategy = "vertical" })
		end, "Document Symbol")

		map("n", "gf", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, "Format Buffer")
	end,
})
