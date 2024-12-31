-- Numeros
vim.o.number = true
vim.o.relativenumber = true

-- Tabulacion
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Resltado de busqueda
vim.o.hlsearch = true
vim.o.incsearch = true

-- Encoding
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- Longitud de linea
vim.o.textwidth = 80
vim.o.colorcolumn = "80"

-- Comandos personalizados
vim.api.nvim_set_keymap('n', '<Leader>s', ':w<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>w', ':wq<CR>', { noremap = true, silent = true })

-- NvimTree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true })





