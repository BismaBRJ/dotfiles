-- set up lazy.nvim plugin to manage other plugins
-- source: https://lazy.folke.io/installation
require("config.lazy")

-- initialization for plugin: nvim-lspconfig
-- any overrides are under after/lsp/
vim.lsp.enable({
    "julials", -- Julia LSP: LanguageServer.jl
    -- source: https://github.com/julia-vscode/LanguageServer.jl/wiki/Vim-and-Neovim#vimlspconfig---new-api-in-neovim-011
    
    "pyright", -- Python LSP: Pyright

    "r_language_server", -- LSP for R: languageserver

    "hls", -- Haskell LSP: Haskell Language Server (HLS)
    -- trailing comma, tee-hee
})

-- nvim-lspconfig keybindings below are from:
-- https://vonheikemen.github.io/devlog/tools/neovim-lsp-client-guide/

-- These keymaps are the defaults in Neovim v0.10
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
vim.keymap.set('n', '<C-w>d', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '<C-w><C-d>', '<cmd>lua vim.diagnostic.open_float()<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, {buffer = event.buf})
    end

    -- These keymaps are the defaults in Neovim v0.11
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    bufmap('n', 'grr', '<cmd>lua vim.lsp.buf.references()<cr>')
    bufmap('n', 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    bufmap('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>')
    bufmap('n', 'gra', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('n', 'gO', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
    bufmap({'i', 's'}, '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- These are custom keymaps
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    bufmap('n', 'grt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    bufmap('n', 'grd', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    bufmap({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
  end,
})

-- my other settings

local opt = vim.opt

-- I learned the configurations below from:
-- https://neovim.io/doc/user/usr_30.html

-- :set shiftwidth=4
opt.shiftwidth = 4

-- :set softtabstop=-1
-- to use the default as provided by shiftwidth
opt.softtabstop = -1

-- :set expandtab
-- to expand the tab character as spaces
opt.expandtab = true

-- other configurations:

-- absolute and relative line numbers
opt.number = true
opt.relativenumber = true

