vim.keymap.set(
        "n",
        "<leader>e",
        vim.diagnostic.open_float,
        { noremap = true, silent = true, desc = "Show diagnostic float" }
)

vim.keymap.set(
        "n",
        "<leader>q",
        vim.diagnostic.setloclist,
        { noremap = true, silent = true, desc = "Open diagnostic quicklist" }
)

vim.keymap.set(
        "n",
        "[d",
        vim.diagnostic.goto_prev,
        { noremap = true, silent = true, desc = "Go to previous diagnostic" }
)

vim.keymap.set(
        "n",
        "]d",
        vim.diagnostic.goto_next,
        { noremap = true, silent = true, desc = "Go to next diagnostic" }
)
