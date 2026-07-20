-- adapted from: https://github.com/Julian/lean.nvim (README.md)
return {
    'Julian/lean.nvim',
    event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

    dependencies = {
        -- optional dependencies:

        -- 'nvim-telescope/telescope.nvim', -- for Lean-specific pickers
        -- 'andymass/vim-matchup',          -- for enhanced % motion behavior
        -- 'andrewradev/switch.vim',        -- for switch support
        -- 'tomtom/tcomment_vim',           -- for commenting
    },

    -- I forgot how or why I rewrote this part but iirc it was necessary
    init = function()
        vim.g.lean_config = {
            mappings = true,
        }
    end,
}
