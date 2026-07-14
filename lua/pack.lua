vim.pack.add({
	-- Lsp
	"https://github.com/neovim/nvim-lspconfig",
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",

	-- Utility
	-- { src = "https://github.com/nvim-mini/mini.nvim", name = "mini" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim", branch = "master", name = "telescope" },
	{ src = "https://github.com/nvim-lua/plenary.nvim", name = "plenary" },
	{ src = "https://github.com/nvim-telescope/telescope-file-browser.nvim", name = "telescope-file-browser" },
	-- { src = "https://github.com/nvim-telescope/telescope-ui-select.nvim", name = "telescope-ui-select" },
	"https://github.com/nvim-telescope/telescope-fzf-native.nvim",
	"https://github.com/nvim-mini/mini.notify",
	"https://github.com/tpope/vim-fugitive",

    -- Integrated terminal
    "https://github.com/voldikss/vim-floaterm",

	-- Completion
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/saadparwaiz1/cmp_luasnip",
	"https://github.com/rafamadriz/friendly-snippets",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/hrsh7th/nvim-cmp",
	"https://github.com/hrsh7th/cmp-nvim-lsp",
	"https://github.com/hrsh7th/cmp-buffer",
	"https://github.com/hrsh7th/cmp-path",
	"https://github.com/hrsh7th/cmp-cmdline",

	-- Theme & UI
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/catppuccin/nvim",
	-- "https://github.com/rebelot/kanagawa.nvim",
	-- "https://github.com/folke/tokyonight.nvim",
	-- "https://github.com/ellisonleao/gruvbox.nvim",
	-- "https://github.com/projekt0n/github-nvim-theme",

	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/lukas-reineke/indent-blankline.nvim",
	-- "https://github.com/romgrk/barbar.nvim",
	"https://github.com/hiphish/rainbow-delimiters.nvim",
	-- Helpers
	"https://github.com/folke/which-key.nvim",
})
