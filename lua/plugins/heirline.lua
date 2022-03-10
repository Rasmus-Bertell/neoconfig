local function config()
    local conditions = require("heirline.conditions")
    local utils      = require("heirline.utils")
    local colors     = require("kanagawa.colors").setup()

    local Align = { provider = "%=" }
    local Space = { provider = " " }

    local ViMode = {
        static = {
            name = {
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
            },
            colors = {
                ["Normal"]                       = colors.red,
                ["Normal (pending)"]             = colors.red,
                ["Normal (pending) (char)"]      = colors.red,
                ["Normal (pending) (line)"]      = colors.red,
                ["Normal (pending) (block)"]     = colors.red,
                ["[I] Normal"]                   = colors.red,
                ["[R] Normal"]                   = colors.red,
                ["[VR] Normal"]                  = colors.red,
                ["[T] Normal"]                   = colors.red,
                ["Visual"]                       = colors.cyan,
                ["[S] Visual"]                   = colors.cyan,
                ["Visual (line)"]                = colors.cyan,
                ["[S] Visual (line)"]            = colors.cyan,
                ["Visual (block)"]               = colors.cyan,
                ["[S] Visual (block)"]           = colors.cyan,
                ["Select"]                       = colors.purple,
                ["Select (line)"]                = colors.purple,
                ["Select (block)"]               = colors.purple,
                ["Insert"]                       = colors.green,
                ["Insert (completion)"]          = colors.green,
                ["Insert (completion)"]          = colors.green,
                ["Replace"]                      = colors.orange,
                ["Replace (completion)"]         = colors.orange,
                ["Replace (completion)"]         = colors.orange,
                ["Virtual Replace"]              = colors.orange,
                ["Virtual Replace (completion)"] = colors.orange,
                ["Virtual Replace (completion)"] = colors.orange,
                ["Command"]                      = colors.orange,
                ["Execute"]                      = colors.orange,
                ["Prompt"]                       = colors.orange,
                ["Prompt (more)"]                = colors.orange,
                ["Confirm"]                      = colors.orange,
                ["Zsh"]                          = colors.red,
                ["Terminal"]                     = colors.red,
            }
        },
        init = function(self)
            self.mode = vim.fn.mode(true)
        end,
        provider = function(self)
            return "%("..self.name[self.mode].."%)"
        end,
        hl = function(self)
            return { fg = self.colors[self.mode], style = "bold", }
        end,
    }

    ViMode = utils.surround({ "", "" }, colors.bright_bg, { ViMode })

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

    ScrollBar = utils.surround({ "", "" }, colors.bright_bg, { Ruler, Space, ScrollBar })

    require("heirline").setup({ViMode, Align, ScrollBar});
end

return {
    "rebelot/heirline.nvim",
    config = config
}
