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
  use { 'rose-pine/neovim', as = 'rose-pine' }

  -- Barbar
  use 'romgrk/barbar.nvim'

  -- File Navigation
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
