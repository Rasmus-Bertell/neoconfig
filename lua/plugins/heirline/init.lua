local function config()
    -- local conditions = require("heirline.conditions")
    local utils      = require("heirline.utils")
    local kanagawa   = require("kanagawa.colors").setup()

    local Align = { provider = "%=" }
    local Space = { provider = " " }

    local mode = require("plugins.heirline.mode")
    local file = require("plugins.heirline.file.block")

    local fileType   = require("plugins.heirline.file.type")
    local fileFormat = require("plugins.heirline.file.format")

    local Ruler = {
        provider = "%7(%l/%3L%):%2c %P",
    }

    local ScrollBar ={
        static = {
            sbar = { '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█' }
        },
        provider = function(self)
            local curr_line = vim.api.nvim_win_get_cursor(0)[1]
            local lines = vim.api.nvim_buf_line_count(0)
            local i = math.floor(curr_line / lines * (#self.sbar - 1)) + 1

            return self.sbar[i]
        end
    }

    Left   = utils.surround({ "", "" }, kanagawa.waveBlue1, { mode })
    Middle = utils.surround({ "", "" }, kanagawa.waveBlue1, { file })
    Right  = { fileType, Space, fileFormat, Space, Ruler, Space, ScrollBar }

    require("heirline").setup({ Left, Align, Middle, Align, Right });
end

return {
    "rebelot/heirline.nvim",
    requires = {
        require("plugins.kanagawa"),
        { "kyazdani42/nvim-web-devicons" },
    },
    config = config
}
