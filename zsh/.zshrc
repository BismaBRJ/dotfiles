# It seems Haskell's GHCup chose .zshrc instead of .zprofile for some reason
# I don't even know what exactly this does, lol
[ -f "/Users/bisma/.ghcup/env" ] && . "/Users/bisma/.ghcup/env" # ghcup-env

export PATH="/usr/local/opt/bison/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/bisma/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<


. "$HOME/.local/bin/env"
