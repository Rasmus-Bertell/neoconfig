local function config()
    local luasnip = require("luasnip")
    local cmp     = require("cmp")

    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = {
            ["<CR>"] = cmp.mapping.confirm({ select = false }),
            ["<Tab>"] = cmp.mapping(
                function (fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end,
                { "i", "s" }
            ),
            ["<S-Tab>"] = cmp.mapping(
                function (fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end,
                { "i", "s" }
            ),
        },
        sources = {
            { name = "nvim_lsp"},
            { name = "luasnip" },
            { name = "path" },
            { name = "buffer" , keyword_length = 5},
        },
        experimental = {
            ghost_text = true
        }
    })
end

return {
    "hrsh7th/nvim-cmp",
    config   = config,
    requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        {
            "saadparwaiz1/cmp_luasnip",
            requires = { "L3MON4D3/LuaSnip" }
        },
    }
}
