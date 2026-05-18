-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)


-- if vim.g.vscode then
--   vim.opt.laststatus = 0
--   vim.opt.showmode = true
-- end

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup("plugins")
require("vim-option")

-- if vim.g.vscode then
--     -- Define a shortcut helper for standard Vim command execution
--     local function vscode_action(cmd)
--         return function()
--             vim.fn.VSCodeNotify(cmd)
--         end
--     end
--
--     -- Normal Mode: Move line up/down with Alt+k / Alt+j
--     vim.keymap.set("n", "<A-k>", vscode_action("editor.action.moveLinesUpAction"), { desc = "Move line up" })
--     vim.keymap.set("n", "<A-j>", vscode_action("editor.action.moveLinesDownAction"), { desc = "Move line down" })
--
--     -- Visual Mode: Move selection up/down with Alt+k / Alt+j
--     vim.keymap.set("v", "<A-k>", vscode_action("editor.action.moveLinesUpAction"), { desc = "Move selection up" })
--     vim.keymap.set("v", "<A-j>", vscode_action("editor.action.moveLinesDownAction"), { desc = "Move selection down" })
-- end
