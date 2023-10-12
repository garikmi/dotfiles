 return require('packer').startup({function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Comment
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  -- Rose Pine Theme
  -- use { 'rose-pine/neovim', as = 'rose-pine' }
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Barbar
  use 'romgrk/barbar.nvim'

  -- File Navigation
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
