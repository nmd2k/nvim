if vim.loader then
	vim.loader.enable()
end
-- Package Management
require("vim._core.ui2").enable({ enable = true })
require("pack")

require("utils.commands")

-- Editor Settings
require("settings.options")
require("settings.keymaps")

-- Plugins
require("plugins.theme")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.telescope")
if not vim.g.vscode then
	require("plugins.ui")
end
-- require("plugins.treesitter")
