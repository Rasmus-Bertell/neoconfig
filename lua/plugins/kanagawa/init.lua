local config = function()
        require("kanagawa").setup()
        vim.opt.termguicolors = true
        vim.cmd("colorscheme kanagawa")
end

return {
        "rebelot/kanagawa.nvim",
        config = config,
}
