require("pers")

-- Config nvim-tree
vim.keymap.set("n", "<leader>e", ':NvimTreeFocus<CR>')
vim.keymap.set("n", "<leader>tf", ':NvimTreeFindFile<CR>')
vim.keymap.set("n", "<leader>f", ':wincmd l<CR>')


-- Resaltar TODO y FIXME en todos los archivos
vim.cmd('highlight TodoHighlight guifg=#eaff00 gui=bold')

-- Añade resaltado para las palabras TODO y todo
vim.fn.matchadd('TodoHighlight', '\\<TODO\\>', -1)
vim.fn.matchadd('TodoHighlight', '\\<todo\\>', -1)

function OpenTelescopeVertically()
  vim.cmd("vsplit") -- Divide la ventana verticalmente
  require('telescope.builtin').find_files() -- Inicia Telescope
end

-- Función para abrir Telescope en una ventana dividida horizontalmente
function OpenTelescopeHorizontally()
  vim.cmd("split") -- Divide la ventana horizontalmente
  require('telescope.builtin').find_files() -- Inicia Telescope
end

function ResizeMode()
  -- Activa el modo de redimensionamiento
  vim.api.nvim_echo({{"Resize Mode: Use h/j/k/l to resize, Esc to exit.", "Normal"}}, false, {})

  -- Mapear las teclas de redimensionamiento
  vim.keymap.set('n', 'h', '<C-w><', { noremap = true, silent = true, buffer = true })
  vim.keymap.set('n', 'l', '<C-w>>', { noremap = true, silent = true, buffer = true })
  vim.keymap.set('n', 'j', '<C-w>+', { noremap = true, silent = true, buffer = true })
  vim.keymap.set('n', 'k', '<C-w>-', { noremap = true, silent = true, buffer = true })

  -- Salir del modo de redimensionamiento con Esc
  vim.keymap.set('n', '<Esc>', ':lua ExitResizeMode()<CR>', { noremap = true, silent = true, buffer = true })
end

-- Función para salir del modo de redimensionamiento
function ExitResizeMode()
  vim.api.nvim_echo({{"", "Normal"}}, false, {})
  vim.cmd('silent! unmap <buffer> h')
  vim.cmd('silent! unmap <buffer> l')
  vim.cmd('silent! unmap <buffer> j')
  vim.cmd('silent! unmap <buffer> k')
  vim.cmd('silent! unmap <buffer> <Esc>')
end

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sh", OpenTelescopeHorizontally, { noremap = true, silent = true})
vim.keymap.set("n", "<leader>sv", OpenTelescopeVertically, { noremap = true, silent = true})
vim.keymap.set("n", "<leader>q", "<C-w>q")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>c", "<C-w>r")

vim.keymap.set('n', '<leader>r', ':lua ResizeMode()<CR>', { noremap = true, silent = true })

