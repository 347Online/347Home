return {
	"neovim/nvim-lspconfig",
	dependencies = { "nvimdev/lspsaga.nvim" },
	config = function()
		local lspconfig = require("lspconfig")
		require("lspconfig").lua_ls.setup({})
		require("lspconfig").ts_ls.setup({})
	end,
}
