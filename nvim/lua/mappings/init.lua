-- Map leader key to space
vim.g.mapleader = ' '

-- Disable AutoPairs toggle from Esc-p to avoid accidental toggling
vim.g.AutoPairsShortcutToggle = ''

-- Space-u to toggle Navigation Sidebar
vim.keymap.set('n', '<leader>u', ':NvimTreeToggle<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>ft', ':Telescope help_tags<CR>')

-- Reload luafile
vim.keymap.set('n', '<leader>r', ':luafile %<CR>')

-- Vimtex compile
vim.keymap.set('n', '<leader>t', ':VimtexCompile<CR>')
