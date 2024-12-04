-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Cleans up the background --
-- function BackgroundColour(color)
--     color = color or "evangelion"
--     vim.cmd(
--         'syntax region TypeBrackets start="\\v\\[|\\(" end="\\v\\]|\\)" contains=BracketHighlightOpen,BracketHighlightClose,TypeHighlight'
--     )
--     vim.cmd('syntax match BracketHighlightOpen "\\v\\[" contained')
--     vim.cmd('syntax match BracketHighlightClose "\\v\\]" contained')
--     vim.cmd('syntax match TypeHighlight "\\v\\w+" contained')
--     vim.cmd([[
--         augroup user_colors
--             autocmd!
--             autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
--             autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
--             autocmd ColorScheme * highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=none gui=none guifg=Grey guibg=none
--             autocmd ColorScheme * highlight Folded ctermbg=none
--             autocmd ColorScheme * highlight FoldColumn ctermbg=none guibg=Grey guifg=White
--             autocmd ColorScheme * highlight SignColumn ctermbg=none guibg=none guifg=none
--             autocmd ColorScheme * highlight NormalFloat ctermbg=none guibg=none
--             autocmd ColorScheme * highlight! link BracketHighlightOpen Bracket
--             autocmd ColorScheme * highlight! link BracketHighlightClose Brackets
--         augroup END
--     ]])
--     vim.o.termguicolors = true
--     vim.cmd.background = "light"
--     vim.cmd.colorscheme(color)
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- BackgroundColour()
--

-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "rust", "gleam", "haskell" },
    callback = function()
        vim.b.autoformat = false
    end,
})
