local kanagawa = require("kanagawa.colors").setup()

-- See 'help mode()' for list of modes
local name = {
    ["n"]    = "Normal",
    ["v"]    = "Visual",
    ["V"]    = "Visual (line)",
    [""]   = "Visual (block)",
    ["s"]    = "Select",
    ["S"]    = "Select (line)",
    [""]   = "Select (block)",
    ["i"]    = "Insert",
    ["R"]    = "Replace",
    ["c"]    = "Command",
    ["r"]    = "Prompt",
    ["!"]    = "Shell",
    ["t"]    = "Terminal",
}

local color = {
    ["n"]    = kanagawa.fujiWhite,
    ["v"]    = kanagawa.springBlue,
    ["V"]    = kanagawa.springBlue,
    [""]   = kanagawa.springBlue,
    ["s"]    = kanagawa.oniViolet,
    ["S"]    = kanagawa.oniViolet,
    [""]   = kanagawa.oniViolet,
    ["i"]    = kanagawa.springGreen,
    ["R"]    = kanagawa.carpYellow,
    ["c"]    = kanagawa.peachRed,
    ["r"]    = kanagawa.peachRed,
    ["!"]    = kanagawa.peachRed,
    ["t"]    = kanagawa.peachRed,
}

local function init(self)
    self.mode = vim.fn.mode()
end

local function provider(self)
    return "%("..self.name[self.mode].."%)"
end

local function highlight(self)
    return { fg = self.colors[self.mode], bold = true, }
end

return {
    static   = { name = name, colors = color },
    init     = init,
    provider = provider,
    hl       = highlight,
}
