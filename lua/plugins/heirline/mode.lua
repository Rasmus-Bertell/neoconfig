local kanagawa = require("kanagawa.colors").setup()

local name = {
    ["n"]    = "Normal",
    ["no"]   = "Normal (pending)",
    ["nov"]  = "Normal (pending) (char)",
    ["noV"]  = "Normal (pending) (line)",
    ["no"] = "Normal (pending) (block)",
    ["niI"]  = "[I] Normal",
    ["niR"]  = "[R] Normal",
    ["niV"]  = "[VR] Normal",
    ["nt"]   = "[T] Normal",
    ["v"]    = "Visual",
    ["vs"]   = "[S] Visual",
    ["V"]    = "Visual (line)",
    ["Vs"]   = "[S] Visual (line)",
    [""]   = "Visual (block)",
    ["s"]  = "[S] Visual (block)",
    ["s"]    = "Select",
    ["S"]    = "Select (line)",
    [""]   = "Select (block)",
    ["i"]    = "Insert",
    ["ic"]   = "Insert (completion)",
    ["ix"]   = "Insert (completion)",
    ["R"]    = "Replace",
    ["Rc"]   = "Replace (completion)",
    ["Rx"]   = "Replace (completion)",
    ["Rv"]   = "Virtual Replace",
    ["Rvc"]  = "Virtual Replace (completion)",
    ["Rvx"]  = "Virtual Replace (completion)",
    ["c"]    = "Command",
    ["cv"]   = "Execute",
    ["r"]    = "Prompt",
    ["rm"]   = "Prompt (more)",
    ["r?"]   = "Confirm",
    ["!"]    = "Zsh",
    ["t"]    = "Terminal",
}

local color = {
    ["n"]    = kanagawa.fujiWhite,
    ["no"]   = kanagawa.fujiWhite,
    ["nov"]  = kanagawa.fujiWhite,
    ["noV"]  = kanagawa.fujiWhite,
    ["no"] = kanagawa.fujiWhite,
    ["niI"]  = kanagawa.fujiWhite,
    ["niR"]  = kanagawa.fujiWhite,
    ["niV"]  = kanagawa.fujiWhite,
    ["nt"]   = kanagawa.fujiWhite,
    ["v"]    = kanagawa.springBlue,
    ["vs"]   = kanagawa.springBlue,
    ["V"]    = kanagawa.springBlue,
    ["Vs"]   = kanagawa.springBlue,
    [""]   = kanagawa.springBlue,
    ["s"]  = kanagawa.springBlue,
    ["s"]    = kanagawa.oniViolet,
    ["S"]    = kanagawa.oniViolet,
    [""]   = kanagawa.oniViolet,
    ["i"]    = kanagawa.springGreen,
    ["ic"]   = kanagawa.springGreen,
    ["ix"]   = kanagawa.springGreen,
    ["R"]    = kanagawa.carpYellow,
    ["Rc"]   = kanagawa.carpYellow,
    ["Rx"]   = kanagawa.carpYellow,
    ["Rv"]   = kanagawa.carpYellow,
    ["Rvc"]  = kanagawa.carpYellow,
    ["Rvx"]  = kanagawa.carpYellow,
    ["c"]    = kanagawa.peachRed,
    ["cv"]   = kanagawa.peachRed,
    ["r"]    = kanagawa.peachRed,
    ["rm"]   = kanagawa.peachRed,
    ["r?"]   = kanagawa.peachRed,
    ["!"]    = kanagawa.peachRed,
    ["t"]    = kanagawa.peachRed,
}

local function init(self)
    self.mode = vim.fn.mode(true)
end

local function provider(self)
    return "%("..self.name[self.mode].."%)"
end

local function highlight(self)
    return { fg = self.colors[self.mode], style = "bold", }
end

return {
    static   = { name = name, colors = color },
    init     = init,
    provider = provider,
    hl       = highlight,
}
