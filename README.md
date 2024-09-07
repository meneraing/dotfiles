# My dotfiles

This repository contains the dotfiles for my system and acts as a backup just in case.

## Requirements

If you want to use these configurations, ensure you have the following installed on your system:
(Instructions for Arch based distros provided below)

### Git

```
sudo pacman -S git
```

### Stow

```
sudo pacman -S stow
```
### Other packages

```
sudo pacman -S hyprland waybar wlogout alacritty wl-clipboard sddm thunar swww pkgfile
```
```
paru -S waypaper clipse
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/meneraing/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

## Credits

- Rofi powermenu taken from: https://github.com/adi1090x/rofi and https://github.com/2SSK/dot-files

- Random wallpaper setting script adapted from: https://gist.github.com/mcnaveen/ec639eacf4c84f3324c8b90704bf9365

