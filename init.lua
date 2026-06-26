vim.loader.enable()

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
-- require("plugins.mini")
require("plugins.ui")
-- require("plugins.treesitter")
