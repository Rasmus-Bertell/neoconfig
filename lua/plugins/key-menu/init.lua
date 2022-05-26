local config = function()
        -- Bind leader and square brackets to open floating window, most of my
        -- bindings use them as entry points. Leader does an action and square
        -- brackets are for navigation
        require("key-menu").set("n", "<leader>")
        require("key-menu").set("n", "[")
        require("key-menu").set("n", "]")

        -- Control how fast floating window appears
        vim.opt.timeoutlen = 300
end

return {
        "linty-org/key-menu.nvim",
        config = config,
}
