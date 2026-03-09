-- packages, or something?

-- setting up / installing lazy.nvim
-- source: https://lazy.folke.io/installation
require("config.lazy")

-- nvim-lspconfig
-- any overrides are under after/lsp/
vim.lsp.enable({
    "pyright", -- Python LSP: Pyright
    "hls", -- Haskell LSP: Haskell Language Server (HLS)
    -- trailing comma, tee-hee
})

-- old syntax:
--[[
-- nvim-lspconfig
local lspconfig = require("lspconfig")

-- Python LSP: Pyright
lspconfig.pyright.setup({})
]]

-- my other settings

local opt = vim.opt

-- from:
-- https://neovim.io/doc/user/usr_30.html

-- :set shiftwidth=4
opt.shiftwidth = 4

-- :set softtabstop=-1
-- to use the default as provided by shiftwidth
opt.softtabstop = -1

-- :set expandtab
-- to expand the tab character as spaces
opt.expandtab = true

-- more:

-- absolute and relative line numbers
opt.number = true
opt.relativenumber = true

