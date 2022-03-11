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

vim.opt.scrolloff   = 25
vim.opt.colorcolumn = { 80, 100, 120 }

require("plugins")
