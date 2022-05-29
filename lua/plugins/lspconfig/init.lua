local config = function()
        require("plugins.lspconfig.keymap")
        require("plugins.lspconfig.lua-language-server")
        require("plugins.lspconfig.intelephense")
end

return {
        "neovim/nvim-lspconfig",
        config = config,
}
