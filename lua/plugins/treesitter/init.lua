local config = function()
        require("nvim-treesitter.configs").setup({
                highlight             = { enable = true },
                incremental_selection = { enable = false },
                indent                = { enable = true },
                ensure_installed      = {
                        "bibtex", "c", "cmake", "comment", "cpp", "css",
                        "dockerfile", "html", "http", "javascript", "json",
                        "json5", "jsonc", "latex", "ledger", "llvm", "lua",
                        "make", "markdown", "php", "phpdoc", "python", "query",
                        "rust", "toml", "typescript", "vim", "yaml",
                },
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
