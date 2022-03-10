return {
    "Mofiqul/vscode.nvim",
    config = function()
        vim.g.vscode_style = "dark"
        vim.g.vscode_transparent = 1
        vim.g.vscode_italic_comment = 1

        require("vscode").set()
    end
}
