-- Require Floaterm installed
vim.keymap.set("n", "<leader>ft", ":FloatermToggle<CR>", { silent = true, desc = "Toggle Floaterm" })
vim.keymap.set("t", "<leader>ft", [[<C-\><C-n>:FloatermToggle<CR>]], { silent = true, desc = "Hide Floaterm" })
