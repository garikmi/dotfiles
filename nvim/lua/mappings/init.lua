-- Map leader key to space
vim.g.mapleader = ' '

-- Disable AutoPairs toggle from Esc-p to avoid accidental toggling
vim.g.AutoPairsShortcutToggle = ''

-- Toggle Navigation Sidebar
vim.keymap.set('n', '<leader>u', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>U', ':NvimTreeRefresh<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>ft', ':Telescope help_tags<CR>')

-- Reload luafile
vim.keymap.set('n', '<leader>r', ':luafile %<CR>')

-- Vimtex compile
vim.keymap.set('n', '<leader>t', ':VimtexCompile<CR>')

-- Open/Close DapUI
vim.keymap.set('n', '<leader>dgg', ":lua require'dapui'.open()<CR>")
vim.keymap.set('n', '<leader>dgx', ":lua require'dapui'.close()<CR>")

-- Debugging
vim.keymap.set('n', '<leader>c', ":lua require'dap'.continue()<CR>")
-- vim.keymap.set('n', '<leader>', ":lua require'dap'.reverse_continue()<CR>")
vim.keymap.set('n', '<leader>nn', ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<leader>ni', ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', '<leader>no', ":lua require'dap'.step_out()<CR>")
vim.keymap.set('n', '<leader>nr', ":lua require'dap'.restart()<CR>")
vim.keymap.set('n', '<leader>nx', ":lua require'dap'.close()<CR>")

vim.keymap.set('n', '<leader>bb', ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', '<leader>B', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set('n', '<leader>BB', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set('n', '<leader>bx', ":lua require'dap'.clear_breakpoints()<CR>")

vim.keymap.set('n', '<leader>br', ":lua require'dap'.repl.open()<CR>")

-- Bufferline
vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', 'XH', ':BufferLineCloseLeft<CR>')
vim.keymap.set('n', 'XL', ':BufferLineCloseRight<CR>')

-- Move
-- vim.keymap.set('n', '', ':BufferLineMoveNext<CR>')
-- vim.keymap.set('n', '', ':BufferLineMovePrev<CR>')

-- Sort
-- vim.keymap.set('n', '', ':BufferLineSortByExtension<CR>')
-- vim.keymap.set('n', '', ':BufferLineSortByDirectory<CR>')

