require("pers")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ':NvimTreeFocus<CR>')
vim.keymap.set("n", "<leader>q", ':NvimTreeClose<CR>')
vim.keymap.set("n", "<leader>tf", ':NvimTreeFindFile<CR>')
vim.keymap.set("n", "<leader>f", ':wincmd l<CR>')
