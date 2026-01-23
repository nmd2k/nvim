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
--
