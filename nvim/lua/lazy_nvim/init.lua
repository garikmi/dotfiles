local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4", 
        dependencies = { "nvim-lua/plenary.nvim" } },
    { "numToStr/Comment.nvim", opts = { }, lazy = false },
    { "romgrk/barbar.nvim", dependencies = { "nvim-tree/nvim-web-devicons" },
        version = "^1.0.0" },
    { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons"} },
    { "lukas-reineke/indent-blankline.nvim" },

    { "nvim-lualine/lualine.nvim" },

    { "windwp/nvim-autopairs" },

    { "nvim-treesitter/nvim-treesitter" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },

    { "mbbill/undotree" },
    { "lewis6991/gitsigns.nvim" },
})
