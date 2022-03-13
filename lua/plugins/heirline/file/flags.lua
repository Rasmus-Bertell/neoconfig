local kanagawa = require("kanagawa.colors").setup()

return {
    {
        provider = function()
            if vim.bo.modified then
                return "[+]"
            end
        end,
        hl       = { fg = kanagawa.springGreen }

    }, {
        provider = function()
            if (not vim.bo.modifiable) or vim.bo.readonly then
                return ""
            end
        end,
        hl       = { fg = kanagawa.surimiOrange }
    }
}
