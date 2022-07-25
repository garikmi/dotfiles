require('packer').startup({function()
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Close pairs
  use 'jiangmiao/auto-pairs'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion
  use 'hrsh7th/cmp-nvim-lsp' -- Source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Code snippets
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'onsails/lspkind-nvim' -- Vscode-like pictograms

  use "rafamadriz/friendly-snippets"

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Code highlight
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Sidebar navigation
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons' -- icons

  -- Automatically save document
  use 'Pocco81/AutoSave.nvim'

  -- File searcher/browser
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

  -- Comments
  use 'terrortylor/nvim-comment'

  -- Themes
  use 'rose-pine/neovim'
  use 'navarasu/onedark.nvim'

  -- Status line
  use 'tamton-aquib/staline.nvim'

  -- Highlight TODOs
  use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Debugging
  use 'mfussenegger/nvim-dap' -- debug adapter protocol
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} } -- ui for dap
  use 'theHamsta/nvim-dap-virtual-text' -- show values of vars inline
  use 'nvim-telescope/telescope-dap.nvim' -- launch, stop, and restart debugging with telescope
  use 'mfussenegger/nvim-dap-python' -- dap server for python
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})

