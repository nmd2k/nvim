vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set number")
vim.cmd("set rnu")

-- Hide search result after hit Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Pressing Enter in Normal mode creates a blank line below
-- vim.keymap.set("n", "<CR>", "m`o<Esc>``", { silent = true })

-- Quick escape from insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })

-- Show error in floating window
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic list" })

-- sync system clipboard
vim.opt.clipboard = "unnamedplus"

-- Tab go
vim.keymap.set("n", "H", ":tabprevious<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "L", ":tabnext<CR>", { desc = "Next tab" })

vim.opt.wildoptions = "pum"
