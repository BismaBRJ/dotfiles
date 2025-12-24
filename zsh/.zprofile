# Lean's elan I think
export PATH="$HOME/.elan/bin:$PATH"

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# metamath-knife, Mario Carneiro's
PATH="${PATH}:/Applications/metamath-knife/target/release"
export PATH

# metamath-exe, the C program
PATH="${PATH}:/Applications/metamath-exe/src"
export PATH

# neovim, lol
PATH="${PATH}:/Applications/nvim-macos-x86_64/bin"
export PATH

# after installing Homebrew
eval "$(/usr/local/bin/brew shellenv)"

