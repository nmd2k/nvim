vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set number")
vim.cmd("set rnu")

-- Hide search result after hit Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Pressing Enter in Normal mode creates a blank line below
vim.keymap.set("n", "<CR>", "m`o<Esc>``", { silent = true })

-- Quick escape from insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })

-- sync system clipboard
vim.opt.clipboard = "unnamedplus"
