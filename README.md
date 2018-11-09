# My dot files

## Introduction

This repository is the result of many hours of laptop customization where I've seek low-contrast color theme, overall responsiveness and ergonomics. Feel free to use and update.

Technologies used:

* Laptop: Lenovo ThinkPad X1 Extreme
* OS: Arch Linux w/ BlackArch repo
* FS: OpenZFS :)
* Display Manager: none
* Window Manager: awesome-wm w/ several libraries and inspiration from other public repos
* Lock Screen: i3lock-fancy
* Terminal emulator: urxvt
* Terminal emulator transparency: xcompmgr
* Shell: zsh w/ oh-my-zsh
* Browser: google-chrome-stable and firefox
* File Explorer: PCManFM
* Sound: Pulseaudio
* Music: mpd & ncmpcpp. Configured with unix sockets
* Editors: vim, diffuse, bless
* Screenshots: flameshot
* Main font: Inconsolata 12

![Overview](https://github.com/martindube/dotfiles/raw/master/.dotfiles_files/my_theme.png)


## Installation

```
cd $HOME
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --recursive --bare https://github.com/martindube/dotfiles $HOME/.dotfiles
config checkout

git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
git clone https://github.com/Mashape/lua-ip .config/awesome/modules/lua-ip
git clone https://github.com/copycat-killer/lain/ .config/awesome/lain
```

Temporary hack.

```
cp .dotfiles_files/batbar.lua .config/awesome/lain/widget/contrib/
cp .dotfiles_files/my_mpd.lua .config/awesome/lain/widget/contrib/
```


## Credits

Thanks to Nicola Paolucci for this blog post: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/


