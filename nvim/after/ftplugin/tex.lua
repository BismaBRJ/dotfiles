local opt = vim.opt_local

-- word wrap
opt.linebreak = true
-- as opposed to "wrap" which can split mid-word

-- so that word wrap follows indentation as well,
-- that is by visually indenting,
-- just as word wrap is visual wrapping
opt.breakindent = true

