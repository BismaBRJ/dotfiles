local opt = vim.opt_local

-- I guess this is somewhat temporary (or not?)
-- It is simply for when editing some of my Haskell code that is included
-- as-is by minted into my LaTeX-typesetted bachelor's thesis

-- vertical lines at 80-character limit and my thesis' margins (59 char limit)
opt.colorcolumn = { 59, 80 }

