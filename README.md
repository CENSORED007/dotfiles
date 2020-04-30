# My dots

![Alt text](Pictures/cool_screenshots/1587724205.png?raw=true "The Desktop")

## Installation requirements

### Base applications

sway, wl-clipboard, clipman, wofi, mako, waybar, kitty, swaylock-effects, grim, slurp,
nautilus, playerctl, pactl, swayidle, google-chrome, redshift (with wayland patch)
geoclue, gnome-weather, telegram-desktop, spotify, spicetify-cli, neovim

### Fonts

Roboto Slab, otf-font-awesome, Fira Sans, Fira Mono, ttf-font-awesome-4,
ttf-font-awesome, ttf-symbola, ttf-dejavu

### Command-Line utilities

* Vim Plug for Neovim

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* Install nodejs and yarn for coc nvim

```bash
nodejs, yarn
```

* Install zsh, oh-my-zsh and powerlevel10k

```bash
zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
```

## Install the config files

```bash
cd ~
mkdir .dotfiles
cd .dotfiles
git clone https://github.com/RobinOpletal/dotfiles
cd dotfiles
./restoreconfig.sh
```

## Spice up spotify

Run `spicetify apply` in the ~/.config/spicetify/ directory

If it fails, follow the [installation guide](https://github.com/khanhas/spicetify-cli/wiki/Installation)
(installation steps vary depending on where from Spotify is)
