# }}}
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Wayland + virt-viewer
xhost + &> /dev/null

export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(git rsync brew osx colored-man-pages)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"

#Alias ssh for logs to the following command
alias gcloud-instance-1="kitty +kitten ssh robinopletal@35.234.100.125"
# Source zsh with zshreload
alias zshreload="source ~/.zshrc"
alias ytdlbestmp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
alias testping="ping archlinux.org"
# Configure vim = nvim + v = nvim 
alias vim="nvim"
alias v="nvim"
alias r="ranger"
# Kitty aliases
alias ssh='kitty +kitten ssh'
alias d="kitty +kitten diff"
alias image="kitty +kitten icat"
alias code="~/Documents/Programming"
alias h="history -20"
alias ls='exa'
alias search='rg --files --hidden --no-messages --no-ignore-vcs | fzf'
alias mpvplaylist='mpv * "$@" &> /dev/null & disown'

# Sway specifics
alias swayedit="nvim ~/.config/sway/config"
alias baredit="ranger ~/.config/waybar/"
alias makoedit="nvim ~/.config/mako/config"
alias screenshots="ranger ~/Pictures/screenshots/"
alias dots="cd ~/.dotfiles/dotfiles/"

# Navigating the FS
alias exthdd="cd /run/media/robinopletal/cea2d37b-4ec8-4161-91e3-785ae362e0ab/"
alias inthdd="cd /run/media/robinopletal/internalHDD1"

# Virt-viewer
alias viewsystem='sudo virt-viewer --connect qemu:///system'

# SSH ALIASES
alias centos-test="ssh 'root@185.28.193.75' -p 2233"
alias debian-test="ssh 'root@185.28.193.74' -p 2233"

# Local ssh
alias debianvm1="ssh root@192.168.122.25"
alias centosvm1="ssh root@192.168.122.24"

# Syntax Highlighting
source /home/robinopletal/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Vi Mode
# bindkey -v

# Mac specific stuff goes here:

# Linux specific stuff goes here:



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
