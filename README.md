# My dots

![Alt text](Pictures/cool_screenshots/1588457427.png?raw=true "The Desktop")

## Installation requirements

### Base applications

```
sway, wl-clipboard, clipman, wofi, mako, waybar, kitty, swaylock-effects, grim, slurp,
nautilus, playerctl, pactl, swayidle, google-chrome, redshift (with wayland patch)
geoclue, gnome-weather, telegram-desktop, spotify, spicetify-cli, neovim, blueberry,
lxappearance
```

### Fonts

```
Roboto Slab, otf-font-awesome, Fira Sans, Fira Mono, ttf-font-awesome-4,
ttf-font-awesome, ttf-symbola, ttf-dejavu
```

### GTK Themes

```
pop-gtk-theme, pop-icon-theme

Optional: pop-gnome-shell-theme (if you would also like to use GNOME Pop theme)
```

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

## Spice up Spotify

Run `spicetify apply` in the ~/.config/spicetify/ directory

If it fails, follow the [installation guide](https://github.com/khanhas/spicetify-cli/wiki/Installation)
(installation steps vary depending on where from Spotify is)

## Questions

If you have questions, don't hesitate to reach out to me by creating an issue :)
