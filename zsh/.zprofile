# Lean's elan I think. Prepending huh?
export PATH="$HOME/.elan/bin:$PATH"

# for metamath-knife, Mario Carneiro's
export PATH="/Applications/metamath-knife/target/release:${PATH}"

# for metamath-exe, the C program
export PATH="/Applications/metamath-exe/src:${PATH}"

# for neovim, lol
export PATH="/Applications/nvim-macos-x86_64/bin:${PATH}"

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
export PATH="/Applications/platform-tools:$PATH"

# source: https://zed.dev/docs/languages/go
# "If gopls is not found you will likely need to add ..."
export PATH="$PATH:$HOME/go/bin"

# Setting PATH for Python 3.15
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.15/bin:${PATH}"
export PATH
