local config = function()
        require("gitsigns").setup({
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
