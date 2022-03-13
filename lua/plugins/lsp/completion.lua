local function config()
    local cmp = require("cmp")

    cmp.setup {
        mapping = {
            -- TODO
        },
        sources = {
            { name = "nvim_lsp"},
            { name = "path" },
            { name = "buffer" , keyword_length = 5},
        },
        experimental = {
            ghost_text = true
        }
    }
end

return {
    "hrsh7th/nvim-cmp",
    config   = config,
    requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
    }
}
