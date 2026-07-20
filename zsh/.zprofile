# Lean's elan I think. Prepending huh?
export PATH="$HOME/.elan/bin:$PATH"

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH
# funny to see prepending... maybe I should also prepend below
# perhaps to override whatever system defaults there are, if any?
# AHH no wonder the python command now just refers to whatever I installed

# for metamath-knife, Mario Carneiro's
PATH="/Applications/metamath-knife/target/release:${PATH}"
export PATH

# for metamath-exe, the C program
PATH="/Applications/metamath-exe/src:${PATH}"
export PATH

# for neovim, lol
PATH="/Applications/nvim-macos-x86_64/bin:${PATH}"
export PATH

# after installing Homebrew
eval "$(/usr/local/bin/brew shellenv)"

# for Java, the Eclipse JDT Language Server (eclipse.jdt.ls) or whatever it's called
PATH="${HOME}/.local/share/jdtls/jdt-language-server-1.60.0-202606262232/bin:${PATH}"
export PATH

