require("packer").startup({
    {
        -- Packer self managed
        require("plugins.packer"),

        -- General plugins
        require("plugins.filetype"),

        -- Colorscheme
        require("plugins.kanagawa"),

        -- Statusline
        require("plugins.heirline"),

        -- Sidebar
        require("plugins.sidebar"),

        -- LSP
        require("plugins.lsp.config"),
        require("plugins.lsp.completion"),

        -- Filetype Detection
        { "sheerun/vim-polyglot" },

        -- Telescope
        {
            "nvim-telescope/telescope.nvim",
            requires = {
                {"nvim-lua/plenary.nvim"}
            }
        }
    }
})
