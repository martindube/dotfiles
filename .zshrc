# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
kill $$
killall zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mdube"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

#
# Set environment variables
#
export PATH="/home/mdube/.bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"

# Preferred editor for local and remote sessions
export EDITOR='vim'

export TERM='xterm-256color'
export GNUPGHOME=~/.gnupg

# mpc
export MPD_HOST=$HOME'/.config/mpd/socket'

# For eclipse
export SWT_GTK3=0

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#
# Load other config files
#
source $ZSH/oh-my-zsh.sh

# Alias that are not tracked by my dotfiles repository.
source $HOME/.zshrc.nogit

#
# Set custom aliases
#
#alias vim.ide="/usr/bin/vim" 
#alias vim="vim -u ~/.vimrc-basic"

alias dualscreen="xrandr --output HDMI1 --auto --right-of LVDS1"

alias lock='/usr/bin/i3lock-fancy -gpf inconsolata -- /usr/bin/scrot -z'
alias xc='xclip -i -selection clipboard'

alias ip='/usr/bin/grc ip'
alias grepip="grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])'"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

