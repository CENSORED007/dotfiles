printf '\n'
printf 'Creating symlinks for .config files\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/.config/* ~/.config/
printf '\n'

printf 'Creating symlinks for wallpapers\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/Documents/wallpapers ~/Documents/
printf '\n'

printf 'Creating a symlink for .zshrc\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/.zshrc ~/
printf '\n'

printf 'Export nvim as default editor\n'
printf '===================================\n\n'

export EDITOR="nvim"
printf '\n'

printf 'ALL FINISHED!\n'
