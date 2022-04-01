local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
-- Disable AutoPairs toggle from Esc-p to avoid accidental toggling
vim.g.AutoPairsShortcutToggle = ''

-- Space-u to toggle Navigation Siderbar
map('n', '<leader>u', ':NvimTreeToggle<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
