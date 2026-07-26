return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,

    config = function()
        require("kanagawa").setup({
            undercurl = true,
            commentStyle = { italic = true },
            functionStyle = { bold = true },
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = { italic = true },
            transparent = false,
            dimInactive = true,
            terminalColors = true,
            theme = "wave",

            colors = {
                palette = {},
                theme = {
                    wave = {},
                    lotus = {},
                    dragon = {},
                    all = {},
                },
            },

            overrides = function(colors)
                return {}
            end,
        })

        vim.cmd("colorscheme kanagawa")
    end,
}
