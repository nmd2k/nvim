return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
<<<<<<< HEAD
                ensure_installed = { "lua_ls", "jedi_language_server", "clangd" },
=======
                ensure_installed = { "lua_ls", "pyright", "jedi-language-server" },
>>>>>>> 46a82bde509dd729dee659cb5140b997b1b5591f
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })


            lspconfig.pyright.setup({
                capabilities = capabilities,
                settings = {
                    python = {
                        analysis = {
                            diagnosticMode = 'openFilesOnly',
                            autoSearchPaths = true,
                            useLibraryCodeForTypes = true,
                            exclude = { "**/venv", "**/__pycache__" },
                        },
                    },
                },
            })

            vim.diagnostic.config({
                virtual_text = true, -- inline messages
                signs = true, -- symbols in the sign column
                underline = true,
                update_in_insert = false,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
