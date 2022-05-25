local packer = require("packer");

packer.startup({
        {
                {
                        "wbthomason/packer.nvim",
                },
                {
                        "neovim/nvim-lspconfig",
                },
                {
                        "nvim-treesitter/nvim-treesitter",
                        run = ":TSUpdate",
                },
                {
                        "rebelot/kanagawa.nvim",
                },
                {
                        "lewis6991/gitsigns.nvim",
                },
        },
})

require("plugins.lspconfig")
require("nvim-treesitter.configs").setup({})
require("kanagawa").setup()
vim.cmd("colorscheme kanagawa")
require("gitsigns").setup()
