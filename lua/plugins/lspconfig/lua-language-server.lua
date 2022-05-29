-- See all available options at
-- https://github.com/sumneko/lua-language-server/blob/master/locale/en-us/setting.lua

local runtime = {
        version = "LuaJIT",
}

local diagnostics = {
        globals = { "vim" },
}

local workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
}

local format = {
        enable = true,
}

local telemetry = {
        enable = {{default.telemetry.enable}},
}

local settings = {
        Lua = {
                runtime     = runtime,
                diagnostics = diagnostics,
                workspace   = workspace,
                format      = format,
                telemetry   = telemetry,
        },
}

require("lspconfig").sumneko_lua.setup({
        settings = settings,
})
