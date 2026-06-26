-- Learder key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local set = vim.keymap.set

-- Delete without yank
set("n", "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Hide search result after hit Esc
set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- Quick escape from insert mode
set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
-- set("i", "kj", "<Esc>", { desc = "Exit insert mode" })

-- Move lines down/up in visual selection
set("v", "J", ":m  '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
set("v", "K", ":m  '<-2<CR>gv=gv", { desc = "moves up down in visual selection" })

-- Show error in floating window
set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostic" })
set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic list" })

-- Tab go
set("n", "L", ":tabprevious<CR>", { desc = "Previous tab" })
set("n", "H", ":tabnext<CR>", { desc = "Next tab" })


-- Undotree
set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle Builtin Undo tree" })
