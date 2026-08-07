require("persistence").setup()

-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end)

-- select a session to load
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end)

-- load the last session
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)

vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("persistence_auto_load", { clear = true }),
  callback = function()
    if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
      require("persistence").load()
    end
  end,
  nested = true,
})
