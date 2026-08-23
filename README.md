# BismaBRJ/dotfiles

There's not much to see here!

This repo just contains some of my configuration files such as for neovim, zsh, etc.

## My neovim usage

If it may interest you: so far, I intend to use neovim with somewhat-minimal configuration; roughly speaking, I only install what I need. I do hope my `nvim` folder won't grow too large nor complicated. Other than some personal settings/preferences, such as the four-space indentation I have specified in `init.lua`, the plugins I have installed so far are

- `lazy.nvim` to easily manage plugin installations and settings;

- VimTeX to use LaTeX, which apparently comes with some default keybindings;

- `nvim-lspconfig` to easily configure (most; exceptions below) LSPs I use with Neovim, which also comes with some default keymaps, though not explicitly documented, so I enforce them in my `init.lua`;

- `nvim-jdtls` for use of the Eclipse JDT Language Server (the LSP I use for Java); and

- `lean.nvim` for use of the Lean proof assistant (its LSP etc).

Notably, I also wanted to try `quarto-nvim` to use Quarto with Neovim, but it depends on `otter.nvim` to deal with embedded code chunks, which in turn depends on `nvim-treesitter`. It then hit me that I was already comfortable with using Quarto via the command line back when VSCode was my main text editor, so I decided that the `quarto-nvim` plugin is not worth the hassle and I will just continue using the terminal for Quarto.

## My personal quick reference for Neovim

As a "modal" text editor, Neovim has "modes" such as the default "Normal mode" for viewing and "Insert mode" for editing. (This little guide may or may not be partially or fully compatible with Vim or even Vi, as in the default text editor for `git commit` if a message is not specified with `-m`. While I do make use of that compatibility, I do not care to check the specifics.)

### Some normal mode controls

`:w` to save (write), `:wq` to save and quit (also `:q` to only quit, but I rarely do that)

Navigate with arrow keys or `h`, `j`, `k`, `l`:

```
  k
h  l
 j
```

Press and hold to let it scroll (repeating itself until you lift the finger)

Positive integer before any action to specifically repeat it that many times. So for example `3h` goes three characters to the left, `5j` goes five lines down (hence people usually enable relative line numbering in Neovim, to never actually have to calculate distances). I usually go `9j` or `9k`, possibly several times, to scroll down or up quickly.

If word wrap is enabled, `gj` and `gk` goes down and up, respectively, on the "lines" as you see on screen rather than the actual line-breaked lines in the text file

Especially (but not compulsorily) with absolute line numbering enabled, you can jump to a specific line number by

`:` + (line number)

and hit Enter.

Faster navigation:

- Within a line: `0` to jump to the beginning, `$` (yes, dollar sign) to jump to the end. And thus yes, `g0` and `g$` if based on what you see on screen

- `w` to jump to the beginning of the next word, `e` to jump to the end of the next word

- `b` to jump to the beginning of the previous word

- `gg` to jump to the beginning of the text file, `G` (capital G) to jump to the end of the text file

Search:

- Use `/` (forward slash) to start a search, and start typing regex. Esc to cancel, Enter if you are done typing the regex

- `n` and `N` (capital N) to cycle through the search results

- `:noh` to un-highlight (when done I guess)

- Other than this kind of find, you can also find and replace, but I keep forgetting the syntax haha, something about adding an extra `/g` to the end of your regex. So far I always look it up, I rarely use that feature anyway.

Editing:

- `dd` to delete a line. `dj` and `dk` to delete a line as well as the line below or above it respectively; really

    `d` + (positive integer) + `j`/`k`

    to do that many lines at once. Also `dw`, `db` for words, including

    `d` + (positive integer) + `w`/`b`

    for that many words.

- The `d` controls do not just delete but actually cut, as in cut and paste. You can paste the latest cut with `p`

- `yy` ("yank") to copy, rather than cut, an enitre line. Similarly you can use `yj`, `yk`, `yw`, `yb`, and

    `y` + (positive integer) + `j`/`k`/`w`/`b`

    as above, but I prefer visual mode (see below)

- `u` to undo, Ctrl+`r` to redo (yes, Ctrl even in macOS rather than Cmd)

- Selecting with visual mode: `v` to enter visual mode, where you start selecting text and can move the selecting cursor as if navigating in normal mode. Return to normal mode by: `d` to cut, `y` to copy, or Esc to cancel selection.

- Entering insert mode: `i` in-place, `a` to enter in the character right after, `o` to a new line below, `O` (capital O) to a new line above

### Some insert mode controls

Once in insert mode, of course you can type as usual, including using the arrow keys if you want

Esc to return to normal mode

Ctrl+`n` to trigger autocomplete suggestions at will (again, yes Ctrl even in macOS). If there are several choices, cycle through with Ctrl+`n` (next) and Ctrl+`p` (previous). Accept by just continuing to type, reject by cycling back/through them all to the empty choice.

While typing freely in insert mode, I often switch back and forth with normal mode, and quickly so:

Esc + (normal mode operations) + `i`/`a`/`o`/`O`

such as to quickly move my cursor a bit, to quickly scroll, to quickly delete a few words, etc.

Like any sort of general editing advice, **always save whenever you can!** In this case I often switch back to normal mode just to save, so like

Esc + `:w` + `i`/`a`/`o`/`O`

just to save and immediately resume editing in insert mode.

### netrw as a file explorer

In normal mode, you can type `:Ex` to enter netrw, the default file explorer for Neovim. (Use `:q` to return to whatever you were doing before.) You can navigate it pretty much like normal mode, with some special controls, such as:

- Hit Enter at a file or folder to go inside it, hit `-` (the minus sign) to exit the current folder

- `D` (capital D) to delete a file or folder, and you will be asked to confirm **(be careful, this cannot be undone!)**

- `d` (lowercase d) to create a new folder (directory), `%` (percent symbol) to create a new file. Type the name as if in insert mode, and hit Enter to save

- `R` (capital R) to rename, again type the new name and hit Enter to save

- Moving/copying: first do `mt` (mark target) when inside the destination folder, then go to the desired files and do `mf` (mark file) at each of them to select, and then either `mm` or `mc` to move or copy (respectively) all selected files

### Specific to VimTeX

Apparently there is some sort of "leader key", which for me is set to `\` (backslash) by default. When opening a `.tex` file, in normal mode:

- `\lv` to jump to that part in the PDF viewer

- `\ll` to start/stop compiling as well as turn on/off (respectively) auto-compilation on save

In normal mode, `[[` and `]]` jump to the previous and next section respectively (as in, the `\begin{section}` lines)

In insert mode, when in the middle of an environment, `]]` (yes, actually typing it in the text) auto-closes the environment, whatever it may be, even if it's really just unclosed brackets 

### LSP controls

For programming languages with an LSP set up,

- Ctrl+`w`+`d` (yes Ctrl even in macOS) to view a warning or error message on the current line, if it has any (you would know if it does, it would be indicated by a color). Then Ctrl+`w`+`d` again to move your cursor into it to read it better and navigate etc., and in this case, `:q` to return the cursor back to your code

- `]d` and `[d` to jump to the next and previous warning/error message respectively
