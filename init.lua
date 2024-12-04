-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require("lspconfig").gleam.setup({})
require("nvim-treesitter.install").compilers = { "zig" }
