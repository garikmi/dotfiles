require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'williamboman/nvim-lsp-installer'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'Pocco81/AutoSave.nvim'
  use 'onsails/lspkind-nvim'
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use 'terrortylor/nvim-comment'
  use 'nanotee/luv-vimdocs'
  use 'milisims/nvim-luaref'
  use 'lervag/vimtex'
  use 'rose-pine/neovim'
end)
