local conditions = require("heirline.conditions")
local utils      = require("heirline.utils")
local kanagawa   = require("kanagawa.colors").setup()

return {
    init = function(self)
        self.lfilename = vim.fn.fnamemodify(self.filename, ":.")

        if self.lfilename == "" then
            self.lfilename = "[No Name]"
        end
    end,

    utils.make_flexible_component(2, {
        provider = function(self)
            return self.lfilename
        end,
    }, {
        provider = function(self)
            return vim.fn.pathshorten(self.lfilename)
        end,
    }),

    hl = function()
        if vim.bo.modified then
            return { fg = kanagawa.springBlue, style = 'bold' }
        end

        return { fg = utils.get_highlight("Directory").fg }
    end,
}
