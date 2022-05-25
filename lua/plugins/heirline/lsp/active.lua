local conditions = require("heirline.conditions")
local kanagawa   = require("kanagawa.colors").setup()

return {
    condition = conditions.lsp_attached,

    provider = function()
        local names   = {}
        local clients = vim.lsp.buf_get_clients(0)

        if vim.tbl_isempty(clients) then
            return ""
        end

        for _, server in ipairs(clients) do
            table.insert(names, server.name)
        end

        return " [" .. table.concat(names, " ") .. "]"
    end,

    hl = { fg = kanagawa.springGreen, bold = true },
}
