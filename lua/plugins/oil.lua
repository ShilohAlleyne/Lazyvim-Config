return {
    {
        -- Disable neotree
        "nvim-neo-tree/neo-tree.nvim",
        enabled = false,
    },
    {
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup({ keymaps = { ["<Esc>"] = "actions.close" } })
        end,
        keys = {
            { "=", "<cmd>Oil<cr>", mode = "n", desc = "Open Filesystem" },
        },
    },
}
