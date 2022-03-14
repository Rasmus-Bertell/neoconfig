local function config()
    local lsp_installer = require("nvim-lsp-installer")

    lsp_installer.on_server_ready(function(server)
        local opts = {}
        server:setup(opts)
    end)
end

return {
    "neovim/nvim-lspconfig",
    requires = {
        {
            "williamboman/nvim-lsp-installer",
            config = config,
        },
    },
}
