local config = function()
        require("nvim-treesitter.configs").setup({
                ensure_installed      = { "php", "lua", "rust" },
                highlight             = { enable = true },
                incremental_selection = { enable = false },
                indent                = { enable = true },
        })

        vim.opt.foldmethod     = "expr"
        vim.opt.foldexpr       = "nvim_treesitter#foldexpr()"
        vim.opt.foldlevelstart = 1
end

return {
        "nvim-treesitter/nvim-treesitter",
        config = config,
        run = ":TSUpdate",
}
