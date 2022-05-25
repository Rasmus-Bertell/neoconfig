-- See all available options at
-- https://github.com/sumneko/lua-language-server/blob/master/locale/en-us/setting.lua

local runtime = {
        version = "LuaJIT",
}

-- TODO: Enable vim-global only when editing nvim configs
local diagnostics = {
        globals = { "vim" },
}

-- TODO: Enable library path only when editing nvim configs
local workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
}

local format = {
        enable = true,
}

local telemetry = {
        enable = false,
}

require("lspconfig").sumneko_lua.setup({
        settings = {
                Lua = {
                        runtime     = runtime,
                        diagnostics = diagnostics,
                        workspace   = workspace,
                        format      = format,
                        telemetry   = telemetry,
                },
        },
})
