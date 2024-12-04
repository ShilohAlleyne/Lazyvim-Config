return {
    {
        "xero/evangelion.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            overrides = {
                keyword = { fg = "#00ff00", bg = "#222222", undercurl = true },
                ["@boolean"] = { link = "Special" },
            },
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "evangelion",
        },
    },

    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                -- this is all you need
                theme = "evangelion",

                -- below is some extra style
                component_separators = { left = "░", right = "░" },
                section_separators = { left = "▓▒░", right = "░▒▓" },
            },
            sections = {
                lualine_x = {
                    { "encoding", padding = { left = 1, right = 1 }, separator = { left = "░▒▓" } },
                    { "fileformat" },
                    { "filetype" },
                },
                lualine_y = { "searchcount", "progress" },
            },
        },
    },
}
