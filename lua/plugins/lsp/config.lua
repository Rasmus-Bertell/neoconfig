local function config()
    require("lspconfig").rust_analyzer.setup {
        capabilities = capabilities,
    }

    local lsp_installer = require("nvim-lsp-installer")

    lsp_installer.on_server_ready(
        function(server)
            local opts = {}

            if server.name == "sumneko_lua" then
                local runtime_path = vim.split(package.path, ';')
                table.insert(runtime_path, "lua/?.lua")
                table.insert(runtime_path, "lua/?/init.lua")

                opts = {
                    settings = {
                        Lua = {
                            runtime = {
                                version = "LuaJIT",
                                path    = runtime_path,
                            },
                            diagnostics = {
                                globals = { "vim" },
                            },
                            workspace = {
                                library = vim.api.nvim_get_runtime_file("", true),
                            },
                            telemetry = {
                                enable = false,
                            },
                        },
                    },
                }
            elseif server.name == "rust_analyzer" then
                require("rust-tools").setup({
                        server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
                })

                server:attach_buffers()
                require("rust-tools").start_standalone_if_required()
            end

            server:setup(opts)
        end
    )
end

return {
    "neovim/nvim-lspconfig",
    requires = {
        {
            "williamboman/nvim-lsp-installer",
            config = config,
            requires = { "simrat39/rust-tools.nvim" },
        },
    },
}
