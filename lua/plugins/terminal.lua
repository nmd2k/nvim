-- Require Floaterm installed
vim.keymap.set("n", "<leader>ft", ":FloatermToggle<CR>", { silent = true, desc = "Toggle Floaterm" })
vim.keymap.set("t", "<leader>ft", [[<C-\><C-n>:FloatermToggle<CR>]], { silent = true, desc = "Hide Floaterm" })

local floaterm_zoomed = false

vim.keymap.set({ "n", "t" }, "<Leader>tz", function()
	if floaterm_zoomed then
		-- Zoom out (return to normal size)
		vim.cmd("FloatermUpdate --width=0.7 --height=0.6")
		floaterm_zoomed = false
	else
		-- Zoom in (fullscreen look)
		vim.cmd("FloatermUpdate --width=0.95 --height=0.95")
		floaterm_zoomed = true
	end
end, { desc = "Toggle Floaterm Zoom In/Out" })
