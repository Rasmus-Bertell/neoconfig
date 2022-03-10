local function config()
    require("kanagawa").setup(
        {
            undercurl            = true,
            commentStyle         = "italic",
            functionStyle        = "NONE",
            keywordStyle         = "italic",
            statementStyle       = "bold",
            typeStyle            = "NONE",
            variablebuiltinStyle = "italic",
            specialReturn        = true,
            specialException     = true,
            transparent          = false,
            dimInactive          = true,
            colors               = {},
            overrides            = {},
        }
    )

    vim.opt.termguicolors = true
    vim.cmd("colorscheme kanagawa")
end

return {
    "rebelot/kanagawa.nvim",
    config = config
}
