# Define functions 

function checkroot( ) {
if [ $(id -u) = 0 ]; then
  echo "For safety, please run this script without sudo!"
  exit 1
fi
}

function confirm( )
{
#alert the user what they are about to do.
echo "About to rewrite a couple of your config files";
echo "Please consider backing up all of your configuration files from ~/.config/,";
echo "I will not be responsible for any potential damage done!";
printf '\n'
#confirm with the user
read -r -p "Are you sure? [Y/n]" response
case "$response" in
    [yY][eE][sS]|[yY]) 
              #if yes, then execute the passed parameters
               "$@"
              echo "Thank you for using my dotfiles!!!"
              sleep 2
               ;;
    *)
              #Otherwise exit...
              echo "Bye!"
              exit
              ;;
esac
}

############################################################
############################################################

### PROGRAM START ###

# Check root via the checkroot func
printf '\n'
checkroot

# Check confirmation via the confirm func
printf '\n'
confirm

printf 'Deleting some .config files'
printf '\n'
rm -r ~/.config/nvim
rm -r ~/.config/alacritty
rm -r ~/.config/Cadence
rm -r ~/.config/Carla
rm -r ~/.config/chrome-flags.conf
rm -r ~/.config/chromium-flags.conf
rm -r ~/.config/coc
rm -r ~/.config/dunst
rm -r ~/.config/i3
rm -r ~/.config/i3status-rust
rm -r ~/.config/kitty
rm -r ~/.config/mako
rm -r ~/.config/mpv
rm -r ~/.config/neofetch
rm -r ~/.config/nvim
rm -r ~/.config/ranger
rm -r ~/.config/redshift
rm -r ~/.config/spicetify
rm -r ~/.config/sway
rm -r ~/.config/waybar
rm -r ~/.config/wofi

printf 'Deleting .zshrc'
printf '\n'
rm -rf ~/.zshrc

printf '\n'
printf 'Creating symlinks for .config files\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/.config/* ~/.config/
sleep 2
printf '\n'

printf 'Creating symlinks for wallpapers\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/Documents/wallpapers ~/Documents/
sleep 2
printf '\n'

printf 'Creating a symlink for .zshrc\n'
printf '===================================\n\n'

ln -s ~/.dotfiles/dotfiles/.zshrc ~/
sleep 2
printf '\n'

printf 'Export nvim as default editor\n'
printf '===================================\n\n'

export EDITOR="nvim"
sleep 2
printf '\n'

printf 'Make needed directories\n'
printf '===================================\n\n'

mkdir -p -v ~/Pictures/screenshots/

printf 'ALL FINISHED!\n'
