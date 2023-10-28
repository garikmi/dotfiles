-- Barbar
vim.g.barbar_auto_setup = false
require"barbar".setup {
    animation = false,
}

-- Nvim Tree
require("nvim-tree").setup()

-- Leap
require("leap").add_default_mappings()
