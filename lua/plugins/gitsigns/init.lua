local config = function()
        local keymap = require("plugins.gitsigns.keymap")

        require("gitsigns").setup({
                on_attach = keymap,
                current_line_blame = true,
                current_line_blame_opts = {
                        virt_text_pos = 'eol',
                        delay = 300,
                        ignore_whitespace = true,
                },
        })
end

return {
        "lewis6991/gitsigns.nvim",
        config = config,
}
