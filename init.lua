-- Options
vim.opt.clipboard     = "unnamedplus"
vim.g.mapleader       = " "

-- Testing keymaps
vim.api.nvim_set_keymap("n", "<leader><esc>", ":nohlsearch<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>n",     ":bnext<cr>",      { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>p",     ":bprevious<cr>",  { noremap = true })

-- Line numbers
vim.opt.number         = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop     = {{ nvim.indent.size }}
vim.opt.shiftwidth  = {{ nvim.indent.size }}
vim.opt.softtabstop = {{ nvim.indent.size }}
vim.opt.expandtab   = true
vim.opt.smarttab    = true
vim.opt.autoindent  = true
vim.opt.smartindent = true

vim.opt.foldmethod = "syntax"
vim.g.php_folding  = 2

vim.opt.completeopt = "menu,menuone,noselect"

vim.opt.showmode    = false
vim.opt.showcmd     = false
vim.opt.ruler       = false
vim.opt.laststatus  = 2

vim.opt.scrolloff   = 25
vim.opt.colorcolumn = { 80 }

require("plugins")
