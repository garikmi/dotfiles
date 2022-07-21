-- Nvim settings
require('settings')

-- Mappings
require('mappings')

-- Plugin manager
require('packer_config')

-- Themes
-- require('themes.rose_pine')
require('themes.onedark')

-- Sidebar file navigation
require('tree_config')

-- Comment lines
require('comment_config')

-- Hightlight TODOs
require('todo_config')

-- Autosave document
require('autosave_config')

-- Status lines
require('staline_config')

-- Code highlighting
require('treesitter_config')

-- Nvim LSP
require('lsp_config.lsp_installer')
require('lsp_config.lsp_config')
require('lsp_config.autocompletion_and_snippets')

-- Debugging
require('dap_config.dapui')
require('dap_config.languages')
require('dap_config.virtual_text')
require('dap_config.extensions')

-- Bufferline
require('bufferline_config')

