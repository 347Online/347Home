vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat-on-save",
})

return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = true,

		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end

			return {
				timeout_ms = 750,
				lsp_fallback = true,
			}
		end,

		formatters_by_ft = {
			html = { "prettierd" },
			css = { "prettierd" },
			-- markdown = {"prettierd"},

			json = { "prettierd", "eslint_d" },
			jsonc = { "prettierd", "eslint_d" },
			javascript = { "prettierd", "eslint_d" },
			javascriptreact = { "prettierd", "eslint_d" },
			typescript = { "prettierd", "eslint_d" },
			typescriptreact = { "prettierd", "eslint_d" },

			lua = { "stylua" },
			nix = { "nixfmt" },
			yaml = { "yamllint", "yamlfmt" },
		},
	},
}
