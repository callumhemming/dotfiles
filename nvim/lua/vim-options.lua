vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.relativenumber = true

vim.keymap.set({ "n", "i", "n" }, "<C-s>", function()
	vim.lsp.buf.format()
	vim.cmd("write")
end, { desc = "Format with LSP and save" })

vim.keymap.set({ "n", "i", "n" }, "<F4>", function()
	if vim.api.nvim_buf_get_option(0, "buftype") == "" and next(vim.lsp.get_active_clients()) ~= nil then
		vim.lsp.buf.format()
		vim.cmd("write")
	end

	vim.cmd("qall")
end, { desc = "Format with LSP, save and exit" })
