# My dot files

## Introduction

As an infosec enthousiast and professional, I have my face in front of a laptop all day long. For this reason, I have customized my laptop to be responsive and easy on the eyes. This repository is the result of many hours of customization, which I am glad to share. Please note that this is, and will always be, a work in progress.

The theme follows the Zenburn color scheme. However, due to dark and transparent background, the color palet was adjusted on several tools (especially vim, git and urxvt)

Technologies used:

* Laptop: Dell Inc. XPS 15 9550
* OS: Arch Linux w/ BlackArch repo
* Display Manager: none
* Window Manager: awesome-wm w/ several libraries and inspiration from other public repos
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

![Overview](https://github.com/martindube/dotfiles/raw/master/.dotfiles_files/my_theme.png)


## Installation

```
cd $HOME
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --recursive --bare https://github.com/martindube/dotfiles $HOME/.dotfiles
config checkout
```

Temporary hack.

```
cp .dotfiles_files/batbar.lua .config/awesome/lain/widget/contrib/
cp .dotfiles_files/my_mpd.lua .config/awesome/lain/widget/contrib/
```


## Credits

Thanks to Nicola Paolucci for this blog post: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/


