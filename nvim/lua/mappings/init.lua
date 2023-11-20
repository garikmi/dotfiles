---------------------------------------------------------------------- Core
vim.g.mapleader = " "
vim.keymap.set("v", ">", ">:normal gv<CR>")
vim.keymap.set("v", "<", "<:normal gv<CR>")

------------------------------------------------------------------ Neo Tree
local nvimTree = require "nvim-tree.api"
vim.keymap.set("n", "<leader>e", nvimTree.tree.toggle)

-------------------------------------------------------------------- Barbar
vim.keymap.set("n", "<leader>bb", ":BufferPrevious<CR>")
vim.keymap.set("n", "<leader>bn", ":BufferNext<CR>")
vim.keymap.set("n", "<leader>b<", ":BufferMovePrevious<CR>")
vim.keymap.set("n", "<leader>b>", ":BufferMoveNext<CR>")
vim.keymap.set("n", "<leader>bx", ":BufferClose<CR>")

----------------------------------------------------------------- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)

------------------------------------------------------------------ Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

----------------------------------------------------------------------- LSP
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
