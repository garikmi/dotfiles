-- Map leader key to space
vim.g.mapleader = ' '

-- Neo Tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Barbar
vim.keymap.set('n', '<leader>bb', ':BufferPrevious<CR>')
vim.keymap.set('n', '<leader>bn', ':BufferNext<CR>')
vim.keymap.set('n', '<leader>b<', ':BufferMovePrevious<CR>')
vim.keymap.set('n', '<leader>b>', ':BufferMoveNext<CR>')
vim.keymap.set('n', '<leader>bx', ':BufferClose<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
