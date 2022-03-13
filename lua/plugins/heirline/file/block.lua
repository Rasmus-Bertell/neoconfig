local utils = require("heirline.utils")

local block = {
    init = function(self)
        self.filename = vim.api.nvim_buf_get_name(0)
    end,
}

return utils.insert(block,
    require("plugins.heirline.file.icon"),
    require("plugins.heirline.file.name"),
    unpack(require("plugins.heirline.file.flags")),
    { provider = "%<" }
)
