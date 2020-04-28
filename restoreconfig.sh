printf 'Creating symlinks for .config files\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/.config/* ~/.config/
printf '\n'

printf 'Creating symlinks for wallpapers\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/Documents/wallpapers ~/Documents/
printf '\n'

ln -s ~/.dotfiles/dotfiles/.zshrc ~/
printf '\n'

printf 'Creating a symlink for .zshrc\n'
printf '===================================\n\n'

printf 'DONE\n'
printf '===================================\n\n'
