
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", ':NvimTreeFocus<CR>')
vim.keymap.set("n", "<leader>q", ':NvimTreeClose<CR>')
vim.keymap.set("n", "<leader>tf", ':NvimTreeFindFile<CR>')
