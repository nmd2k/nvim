return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.keymap.set('n', '<C-b>', ":Neotree filesystem position=left<CR>", { desc = 'Open file explorer at the left' })
    end
}

