local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
-- Disable AutoPairs toggle from Esc-p to avoid accidental toggling
vim.g.AutoPairsShortcutToggle = ''

-- Space-u to toggle Navigation Sidebar
map('n', '<leader>u', ':NvimTreeToggle<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>ft', ':Telescope help_tags<CR>', opts)

-- Reload luafile
map('n', '<leader>r', ':luafile %<CR>', opts)

-- Vimtex compile
map('n', '<leader>t', ':VimtexCompile<CR>', opts)
