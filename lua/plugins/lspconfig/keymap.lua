vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { noremap = true, silent = true })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true })
