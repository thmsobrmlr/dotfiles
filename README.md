## General

1. Clone the repository to `~/.dotfiles`

   `git clone git@github.com:thomas88/dotfiles.git ~/.dotfiles`

2. Create the required symlinks with the init script

   `cd ~/.dotfiles && ./init.sh`

3. Install command line tools

   `xcode-select --install`

## Hostname

`sudo scutil --set HostName thomas-mbp.local`

## Homebrew

### Install [Homebrew](https://brew.sh/)

```
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to .zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
```

### Install common tools

`brew install zsh`  
`brew install git`  
`brew install starship`  
`brew install git-delta`  
`brew install colordiff`  
`brew install kubectx` - kubectx and kubens  
`brew install act` - run github actions locally  
`brew install doctl` - digital ocean command line tools

## Fonts

`cp -f $HOME/.dotfiles/resources/fonts/* $HOME/Library/Fonts`

**Source Code Pro for Powerline:**  
https://github.com/powerline/fonts/tree/master/SourceCodePro

**Anonymous Pro:**  
https://fonts.google.com/specimen/Anonymous+Pro

## iTerm2

### Solarized Theme

Install the Solarized Theme by importing the Color Preset from `$HOME/.dotfiles/resources/iterm` via Preferences -> Profiles -> Colors -> Color Presets… -> Import….

### Font

Set the font to "Source Code Pro for Powerline" with 14pt size, medium font weight and ligatures turned on via Preferences -> Profiles -> Text.

### Key Bindings

Set key bindings for navigating tabs in Preferences -> Keys:

- Next Tab: CMD+ALT+9
- Previous Tab: CMD+ALT+8

## Terminal

### Solarized Theme

Install the Solarized Theme by importing the Profile from `$HOME/.dotfiles/resources/terminal` via Preferences... -> Profiles -> ... -> Import….

Set the profile as default.

### Font

Set the font to "Source Code Pro for Powerline" with 14pt size and medium font weight via Preferences... -> Profiles -> Solarized Dark -> Font -> Change...

## Node

1. [Install nvm](https://github.com/nvm-sh/nvm)

   `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`

2. Install latests active lts

   `nvm install --lts --latest-npm`

3. Install yarn

   `npm install -g yarn`
