local function config()
end

return {
    "sidebar-nvim/sections-dap",
    config = config,
    requires = {
        require("plugins.nvim-dap"),
    }
}
