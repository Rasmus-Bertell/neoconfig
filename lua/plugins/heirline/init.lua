local function config()
    local utils      = require("heirline.utils")
    local kanagawa   = require("kanagawa.colors").setup()

    local Align = { provider = "%=" }
    local Space = { provider = " " }

    local mode       = require("plugins.heirline.mode")
    local file       = require("plugins.heirline.file.block")
    local fileType   = require("plugins.heirline.file.type")
    local fileFormat = require("plugins.heirline.file.format")
    local ruler      = require("plugins.heirline.file.ruler")
    local scroll     = require("plugins.heirline.file.scroll")

    Left   = utils.surround({ "", "" }, kanagawa.waveBlue1, { mode })
    Middle = utils.surround({ "", "" }, kanagawa.waveBlue1, { file })
    Right  = { fileType, Space, fileFormat, Space, ruler, Space, scroll }

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
