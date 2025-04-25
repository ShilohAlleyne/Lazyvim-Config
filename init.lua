-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").compilers = { "zig" }

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

vim.g.clipboard = {
    name = "wsl-clip",
    copy = {
        ["+"] = "clip.exe",
        ["*"] = "clip.exe",
    },
    paste = {
        ["+"] = "powershell.exe Get-Clipboard",
        ["*"] = "powershell.exe Get-Clipboard",
    },
    cache_enabled = 0,
}
