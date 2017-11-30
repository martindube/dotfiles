# My dot files

## Introduction

As an infosec enthousiast and professional, I play on my laptop all day long. I believe that most linux users should customize their computers for their need, not the opposite. This repository is the result of many hours of customization.

The theme follow the Zenburn color scheme. However, due to dark and transparent background, the color palet was customized on several tools (especially vim, git and zsh)

Technologies used:

* Laptop: Dell Inc. XPS 15 9550
* OS: Arch Linux w/ BlackArch repo
* Display Manager: none
* Window Manager: awesome-wm
* Lock Screen: i3lock-fancy
* Terminal emulator: urxvt
* Terminal emulator transparency: xcompmgr
* Shell: zsh w/ oh-my-zsh
* Browser: google-chrome-stable
* File Explorer: PCManFM
* Sound: Pulseaudio
* Music: mpd & ncmpcpp. Uses unix sockets
* Editors: vim, diffuse, bless
* Screenshots: shutter (TODO: Switch to a more lightweight solution)
* Main font: Inconsolata 12

Please note that this is a work in progress.


## Installation

```
cd $HOME
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare https://github.com/martindube/dotfiles $HOME/.dotfiles
config checkout
```

## Credits

Thanks to Nicola Paolucci for this blog post: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/


