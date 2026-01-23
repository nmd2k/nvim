
return {
    'echasnovski/mini.move',
    version = '*',
    config = function()
        require('mini.move').setup({
            mappings = {
                -- Move visual selection in Visual mode.
                left = '<M-h>',
                right = '<M-l>',
                down = '<M-j>',
                up = '<M-k>',

                -- Move current line in Normal mode
                line_left = '<M-h>',
                line_right = '<M-l>',
                line_down = '<M-j>',
                line_up = '<M-k>',
            },
        })
    end,
}
-- return {
--     "fedepujol/move.nvim",
--     config = function()
--         require("move").setup({})
--
--         local opts = { noremap = true, silent = true }
--
--         -- Normal mode
--         vim.keymap.set("n", "<M-k>", ":MoveLine(-1)<CR>", opts)
--         vim.keymap.set("n", "<M-j>", ":MoveLine(1)<CR>", opts)
--         vim.keymap.set("n", "<M-h>", ":MoveHChar(-1)<CR>", opts)
--         vim.keymap.set("n", "<M-l>", ":MoveHChar(1)<CR>", opts)
--
--         -- Visual mode (for blocks)
--         vim.keymap.set("v", "<M-j>", ":MoveBlock(1)<CR>", opts)
--         vim.keymap.set("v", "<M-k>", ":MoveBlock(-1)<CR>", opts)
--         vim.keymap.set("v", "<M-h>", ":MoveHBlock(-1)<CR>", opts)
--         vim.keymap.set("v", "<M-l>", ":MoveHBlock(1)<CR>", opts)
--     end,
-- }

