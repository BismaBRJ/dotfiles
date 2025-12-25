#!/usr/bin/env zsh
# Would usually be #!/usr/bin/env bash,
# but... this utility literally deals with zsh...
# so surely zsh has been installed

# Reset zsh symlinks
# by removing then relinking

# Note: the use of absolute rather than relative paths is intentional,
# for relinking usually doesn't work properly (recreating the problem) if
# relative paths are used instead

# .zprofile
rm ~/.zprofile
ln -s ~/Documents/All\ My\ Files/Work,\ Portfolio,\ Personal\ Branding/Configurations/dotfiles/zsh/.zprofile ~/.zprofile

# .zshrc
rm ~/.zshrc
ln -s ~/Documents/All\ My\ Files/Work,\ Portfolio,\ Personal\ Branding/Configurations/dotfiles/zsh/.zshrc ~/.zshrc

# .zshenv
rm ~/.zshenv
ln -s ~/Documents/All\ My\ Files/Work,\ Portfolio,\ Personal\ Branding/Configurations/dotfiles/zsh/.zshenv ~/.zshenv

