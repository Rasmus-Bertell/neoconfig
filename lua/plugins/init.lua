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
    }
})
