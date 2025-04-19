vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "-", ":Oil<CR>")

-- vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- see plugins/lazygit.lua:keys
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")

vim.keymap.set("n", "<C-w>d", ":Lspsaga show_buf_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "gra", ":Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "grn", ":Lspsaga rename<CR>", {})
vim.keymap.set("n", "gd", ":Lspsaga goto_definition<CR>", {})
vim.keymap.set("n", "gt", ":Lspsaga goto_type_definition<CR>", {})

vim.keymap.set("n", "<leader>f?", ":Telescope<CR>", {})
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {})
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", {})
vim.keymap.set("n", "<leader>fc", ":Telescope current_buffer_fuzzy_find<CR>", {})
vim.keymap.set("n", "<leader>fr", ":Telescope registers<CR>", {})
