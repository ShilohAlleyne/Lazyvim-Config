return {
    -- -- Eva colorscheme
    -- {
    --     "xero/evangelion.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {
    --         overrides = {
    --             keyword = { fg = "#00ff00", bg = "#222222", undercurl = true },
    --             ["@boolean"] = { link = "Special" },
    --         },
    --         transparent = true,
    --     },
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "evangelion",
    --     },
    -- },
    -- {
    --     "nvim-lualine/lualine.nvim",
    --     event = "VeryLazy",
    --     opts = {
    --         options = {
    --             -- this is all you need
    --             theme = "evangelion",
    --
    --             -- below is some extra style
    --             component_separators = { left = "", right = "" },
    --             section_separators = { left = "▓▒░", right = "░▒▓" },
    --         },
    --         sections = {
    --             lualine_b = {
    --                 {
    --                     "branch",
    --                     branch_color = { active = "#000000", inactive = "#000000" },
    --                     separator = { left = "░▒▓", right = "▓▒░" },
    --                 },
    --                 {
    --                     "diagnostics",
    --                     sources = { "nvim_diagnostic" },
    --                     symbols = { error = " ", warn = " ", info = " " },
    --                     diagnostics_color = {
    --                         error = { fg = "#151515" },
    --                         warn = { fg = "#151515" },
    --                         info = { fg = "#151515" },
    --                     },
    --                     separator = { left = "░▒▓", right = "▓▒░" },
    --                 },
    --             },
    --             lualine_c = {
    --                 { "filename", padding = { left = 1, right = 1 }, separator = { left = "", right = "" } },
    --             },
    --             lualine_x = {
    --                 { "encoding", padding = { left = 1, right = 1 }, separator = { left = "░▒▓" } },
    --                 { "fileformat", padding = { left = 1, right = 1 }, separator = { left = "▓▒░" } },
    --                 { "filetype" },
    --             },
    --             lualine_y = { "searchcount", "progress" },
    --         },
    --     },
    -- },

    "alexxGmZ/e-ink.nvim",
    priority = 1000,
    config = function()
        require("e-ink").setup()
        vim.cmd.colorscheme("e-ink")

        -- choose light mode or dark mode
        -- vim.opt.background = "dark"
        -- vim.opt.background = "light"
        --
        -- or do
        -- :set background=dark
        -- :set background=light
    end,
}
