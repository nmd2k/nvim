vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set number")
-- vim.cmd("set rnu")
-- vim.cmd("set clipboard=unnamedplus")

-- -- Move lines up/down with Alt + j/k
-- vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
-- vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
--
-- -- Visual mode: move selected block
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
--


-- Neovim virtual text inside Vscode
-- vim.diagnostic.config({
--     virtual_text = true,  -- show inline
--     signs = true,
--     underline = true,
--     update_in_insert = false,
-- })

-- Delete not go into buffer
-- vim.keymap.set("n", "dd", '"_dd', { noremap = true })
-- vim.keymap.set("n", "dw", '"_dw', { noremap = true })
-- vim.keymap.set("n", "de", '"_de', { noremap = true })
vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set("n", "de", '"_de')
vim.keymap.set("n", "d0", '"_d0')
vim.keymap.set("n", "d$", '"_d$')
vim.keymap.set("n", "dw", '"_dw')
vim.keymap.set("n", "cw", '"_cw')

-- Quick escape from insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'
