if vim.loader then
	vim.loader.enable()
end
-- Package Management
require("utils.commands")
require("pack")

-- Editor Settings
require("settings.options")
require("settings.keymaps")

-- Plugins
if not vim.g.vscode then
	require("vim._core.ui2").enable({ enable = true })
	require("plugins.telescope")
	require("plugins.theme")
	require("plugins.lsp")
	require("plugins.cmp")
	require("plugins.ui")
    require("plugins.terminal")

    -- Optional, require tree-sitter-cli
	require("plugins.treesitter")
end
