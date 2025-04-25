return {
    "saghen/blink.cmp",
    enabled = true,
    opts = {
        snippets = {
            expand = function(snippet)
                require("luasnip").lsp_expand(snippet)
            end,
            active = function(filter)
                if filter and filter.direction then
                    return require("luasnip").jumpable(filter.direction)
                end
                return require("luasnip").in_snippet()
            end,
            jump = function(direction)
                require("luasnip").jump(direction)
            end,
        },
        keymap = {
            preset = "default",
            ["<C-l>"] = { "snippet_forward", "fallback" },
            ["<C-h>"] = { "snippet_backward", "fallback" },

            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
            ["<Tab>"] = { "select_next", "fallback" },

            ["<C-k>"] = { "scroll_documentation_up", "fallback" },
            ["<C-j>"] = { "scroll_documentation_down", "fallback" },

            ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<CR>"] = { "accept", "fallback" },
            ["<Esc>"] = { "hide", "fallback" },
        },
    },
}
