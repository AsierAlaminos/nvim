require("pers")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ':NvimTreeFocus<CR>')
vim.keymap.set("n", "<leader>q", ':NvimTreeClose<CR>')
vim.keymap.set("n", "<leader>tf", ':NvimTreeFindFile<CR>')
vim.keymap.set("n", "<leader>f", ':wincmd l<CR>')

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
