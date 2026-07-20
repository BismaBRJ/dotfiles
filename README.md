# BismaBRJ/dotfiles

There's not much to see here!

This repo just contains some of my configuration files such as for neovim, zsh, etc.

If it may interest you: so far, I intend to use neovim with somewhat-minimal configuration; roughly speaking, I only install what I need. I do hope my `nvim` folder won't grow too large nor complicated. Other than some personal settings/preferences, such as the four-space indentation I have specified in `init.lua`, the plugins I have installed so far are

- `lazy.nvim` to easily manage plugins;

- VimTeX to use LaTeX, which apparently comes with some default keybindings;

- `nvim-lspconfig` to easily configure my use of LSPs with Neovim, which also comes with some default keymaps, though not explicitly documented, so I enforce them in my `init.lua`;

- `nvim-jdtls` for use of the Eclipse JDT Language Server for Java; and

- `lean.nvim` for use of the Lean proof assistant.

Notably, I also wanted to try `quarto-nvim` to use Quarto with Neovim, but it depends on `otter.nvim` to deal with embedded code chunks, which in turn depends on `nvim-treesitter`. It then hit me that I was already comfortable with using Quarto via the command line back when VSCode was my main text editor, so I decided that the `quarto-nvim` plugin is not worth the hassle and I will just continue using the terminal for Quarto.

