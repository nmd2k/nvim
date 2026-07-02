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
	window = {
		completion = cmp.config.window.bordered({
			border = ui.border("CmpBorder"),
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		}),
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
		-- ["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<C-Space>"] = cmp.mapping(function()
			if cmp.visible_docs() then
				cmp.close_docs()
			else
				cmp.open_docs()
			end
		end, { "i", "c" }),

		-- Confirm selection
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
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
