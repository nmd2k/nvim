local ui = require("utils.ui")
local cmp = require("cmp")

local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()
require("nvim-autopairs").setup({
	check_ts = true,
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	formatting = {
		fields = { "abbr", "menu", "kind" },
		format = function(entry, item)
			-- Define menu shorthand for different completion sources.
			local menu_icon = {
				nvim_lsp = "NLSP",
				nvim_lua = "NLUA",
				luasnip = "LSNP",
				buffer = "BUFF",
				path = "PATH",
			}
			item.menu = menu_icon[entry.source.name]
			local max_width = math.floor(vim.o.columns * 0.20)

			if vim.fn.strchars(item.abbr) > max_width then
				item.abbr = vim.fn.strcharpart(item.abbr, 0, max_width - 1) .. "…"
			end

			return item
		end,
	},
	window = {
		completion = cmp.config.window.bordered({
			border = ui.border("CmpBorder"),
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		}),

		-- documentation = cmp.config.disable,
		documentation = cmp.config.window.bordered({
			border = ui.border("CmpBorder"),
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		}),
	},
	mapping = cmp.mapping.preset.insert({
		-- Scroll documentation
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),

		-- Manually trigger completion menu
		["<Esc>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.abort()
			else
				fallback()
			end
		end, { "i" }),

		-- Confirm selection
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
})

cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline({
		["<CR>"] = cmp.mapping({
			c = function(fallback)
				if cmp.visible() and cmp.get_selected_entry() then
					cmp.confirm({ select = false })
				else
					cmp.close()
					fallback()
				end
			end,
		}),
	}),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
	matching = { disallow_symbol_nonprefix_matching = false },
})

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
