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


##
# Your previous /Users/bisma/.zprofile file was backed up as /Users/bisma/.zprofile.macports-saved_2026-10-15_at_21:17:13
##

# MacPorts Installer addition on 2026-10-15_at_21:17:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# yeah apparently MacPorts added that on their own upon installation
# anyway, just downloaded some Android platform-tools like adb, hopefully this works
export PATH="$PATH:/Applications/platform-tools"

