vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "-", ":Oil<CR>")

-- vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- see plugins/lazygit.lua:keys
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")

vim.keymap.set("n", "<leader>ll", ":Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "<leader>la", ":Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>lr", ":Lspsaga rename<CR>", {})
vim.keymap.set("n", "gd", ":Lspsaga goto_definition<CR>", {})
vim.keymap.set("n", "gt", ":Lspsaga goto_type_definition<CR>", {})
vim.keymap.set("n", "<leader>xr", ":Trouble lsp_references toggle<CR>", {})
vim.keymap.set("n", "<leader>cl", ":Trouble lsp toggle focus=false win.position=right<CR>", {})

vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle filter.buf=0<CR>", {})
vim.keymap.set("n", "<leader>xX", ":Trouble diagnostics toggle<CR>", {})
vim.keymap.set("n", "<leader>xL", ":Trouble loclist toggle<CR>", {})
vim.keymap.set("n", "<leader>xQ", ":Trouble qflist toggle<CR>", {})
vim.keymap.set("n", "<leader>cs", ":Trouble symbols toggle focus=false<CR>", {})
vim.keymap.set("n", "<leader>f?", ":Telescope<CR>", {})
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {})
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", {})
vim.keymap.set("n", "<leader>fc", ":Telescope current_buffer_fuzzy_find<CR>", {})
vim.keymap.set("n", "<leader>fr", ":Telescope registers<CR>", {})
