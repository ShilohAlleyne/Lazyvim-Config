-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local g = vim.g
local o = vim.o
local opt = vim.opt
local A = vim.api

------------
-- Remaps --
------------

g.mapleader = " "

-- Map
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true, noremap = true })
end

-----------[Normal Mode]-----------
-- Window Nav
map("n", "<C-Right>", "<c-w>l") -- Right
map("n", "<C-Left>", "<c-w>h") -- Left
map("n", "<C-Up>", "<c-w>k") -- Up
map("n", "<C-Down>", "<c-w>j") -- Down

-- Show types
map("n", "<Leader>ty", "<cmd>lua vim.lsp.buf.hover()<CR>")

-----------[Insert Mode]-----------
-- Undo
map("i", "<C-z>", "<C-o>u")

-- Redo
map("i", "<C-r>", "<C-o><C-r>")

-- Remap Enter to select dropdown items
-- Setup nvim-cmp.
local cmp = require("cmp")
cmp.setup({
    mapping = {
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
    },
})

----------[Visual Mode]------------

-- Copy
map("v", "<C-c>", '"+y')

-- Paste
map("v", "<C-v>", '"+p')

-- Un-indent
map("v", "<S-Tab>", "<gv")

-- Indent
map("v", "<Tab>", ">gv")
