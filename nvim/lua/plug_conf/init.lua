-------------------------------------------------------------------- Barbar
vim.g.barbar_auto_setup = false
require"barbar".setup {
    animation = false,
}

----------------------------------------------------------------- Nvim Tree
require("nvim-tree").setup()

---------------------------------------------------------------- Treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

    sync_install = false,

    auto_install = true,

    ignore_install = { "javascript" },

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}

--------------------------------------------------------------------- Mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd" },
})
require("lspconfig").clangd.setup{}
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

----------------------------------------------------------------------- Git
require('gitsigns').setup()

-------------------------------------------------------------------- Scopes
require("ibl").setup {
    scope = { enabled = false },
}

---------------------------------------------------------------- Statusline
require('lualine').setup()

---------------------------------------------------------------- Auto-pairs
require("nvim-autopairs").setup()

------------------------------------------------------------------- Bigfile
require("bigfile").setup {
  filesize = 2,
  features = {
    "indent_blankline",
    "lsp",
    "treesitter",
  },
}
