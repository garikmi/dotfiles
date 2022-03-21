-- Vim Tree settings
require'nvim-tree'.setup {
  auto_close = true,
  diagnostics = {
    enable = true
  }
}

-- CascadiaCode Patched Nerd Font for icon suppot
-- https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode
vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = '✗',
    staged = '✓',
    umerged = '',
    renamed = '➜',
    untracked = '★',
    deleted = '',
    ignored = '◌'
  },
  folder = {
    arrow_open = '',
    arrow_closed = '',
    default = '',
    open = '',
    empty = '',
    empty_open = '',
    symlink = '',
    symlink_open = ''
  }
}
