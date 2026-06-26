if vim.loader then
	vim.loader.enable()
end
-- Package Management
require("vim._core.ui2").enable({ enable = true })
require("utils.commands")
require("pack")


-- Editor Settings
require("settings.options")
require("settings.keymaps")

-- Plugins
if not vim.g.vscode then
	require("plugins.telescope")
	require("plugins.theme")
	require("plugins.lsp")
	require("plugins.cmp")
	require("plugins.ui")
    require("plugins.treesitter")
end
