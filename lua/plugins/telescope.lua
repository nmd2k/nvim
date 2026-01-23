return {
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.8',
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
            vim.keymap.set('n', '<leader>fp', builtin.commands, { desc = 'Telescope buildin command' })
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require('telescope').setup({
                defaults = {
                    preview = { filesize_limit = 0.1 } -- in MB
                },
                extensions = {
                    ["ui-select"] = { require("telescope.themes").get_dropdown {} }
                }
            })
            require('telescope').load_extension("ui-select")
        end
    }
}
