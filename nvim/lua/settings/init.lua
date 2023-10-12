set = vim.opt
set.termguicolors = true
set.writebackup = false
set.swapfile = false
set.number = true
set.expandtab = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.autoindent = true
set.smarttab = true
set.mouse = 'a'
set.wrap = true
set.cursorline = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.hidden = true
set.ignorecase = true
set.incsearch = true
set.timeoutlen = 1000
set.ttimeoutlen = 0
set.laststatus = 3 -- global status line
set.clipboard = 'unnamed'
-- Nvim Tree
require("nvim-tree").setup()
