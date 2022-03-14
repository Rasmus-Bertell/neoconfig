local kanagawa = require("kanagawa.colors").setup()
local gps      = require("nvim-gps")

return {
    condition = gps.is_available,
    provider  = gps.get_location,
    hl        = { fg = kanagawa.katanaGray },
}
