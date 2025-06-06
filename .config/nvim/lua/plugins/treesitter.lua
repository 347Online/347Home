return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"bash",
				"javascript",
				"json",
				"lua",
				"rust",
				"tsx",
				"typescript",
				"css",
				"html",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
