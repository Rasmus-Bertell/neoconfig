local function config()
    local sidebar = require("sidebar-nvim")

    sidebar.setup({
        open = true,
        sections = {
            "buffers",
            "git",
            "files",
            "todos",
            "symbols",
            "diagnostics",
            require("dap-sidebar-nvim.breakpoints"),
        },
        dap = {
            breakpoints = {
                icon = "🔍"
            }
        }
    })
end

return {
    "sidebar-nvim/sidebar.nvim",
    config = config,
    requires = {
        require("plugins.sidebar.sections-dap")
    },
}
