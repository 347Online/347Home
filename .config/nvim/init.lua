vim.g.mapleader = ","

require("config.keymaps")
require("config.lazy")
require("config.options")

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})
