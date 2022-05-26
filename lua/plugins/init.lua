local plugins = {
        require("plugins.packer"),
        require("plugins.lspconfig"),
        require("plugins.treesitter"),
        require("plugins.kanagawa"),
        require("plugins.gitsigns"),
        require("plugins.key-menu"),
}

require("packer").startup({
        plugins,
})
