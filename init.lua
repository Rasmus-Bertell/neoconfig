-- Options
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader   = " "

-- Line numbers
vim.opt.number         = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop     = {{ default.indent.size }}
vim.opt.shiftwidth  = {{ default.indent.size }}
vim.opt.softtabstop = {{ default.indent.size }}
vim.opt.expandtab   = {{ default.indent.spaces }}
vim.opt.smartindent = true

-- Folding
vim.opt.foldmethod = "syntax"
vim.g.php_folding  = 2

-- Splitting rightbelow
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Hide info in favor of statusbar
vim.opt.showcmd  = false
vim.opt.showmode = false

-- Always show tabline
vim.opt.showtabline = 2
vim.opt.laststatus  = 3

-- Always show sign column so it doesn't shift text
vim.opt.signcolumn = "yes"

-- Ignore case when searching lowercase
vim.opt.ignorecase = true
vim.opt.smartcase  = true

-- Misc
vim.opt.scrolloff   = 25
vim.opt.colorcolumn = { 80, 100, 120 }

-- sign({name = "DiagnosticSignError", text = "✘"})
-- sign({name = "DiagnosticSignWarn",  text = "▲"})
-- sign({name = "DiagnosticSignHint",  text = "⚑"})
-- sign({name = "DiagnosticSignInfo",  text = ""})

require("plugins")
