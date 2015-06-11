`git clone git@github.com:thomas88/dotfiles.git ~/.dotfiles`

## Set hostname

`sudo scutil --set HostName thomas88-mbp.local`

## Install common tools with homebrew

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`  

`brew install zsh`  
`brew install tmux`  
`brew install git`  
`brew install htop`  

Install `battery` command.
`brew tap Goles/battery`
`brew install battery`
`brew install spark; curl -O https://raw.github.com/Goles/Battery/master/battery ; \
sudo mv battery /usr/bin; sudo chmod 755 /usr/bin/battery`

## Install applications with cask

`brew install caskroom/cask/brew-cask`

`brew cask install iterm2`  
`brew cask install virtualbox`
`brew cask install amethyst`

## Install fonts

`cp -f $HOME/.dotfiles/fonts/* $HOME/Library/Fonts`

**Source of Source Code Pro for Powerline:**  
https://github.com/powerline/fonts/tree/master/SourceCodePro

**Source of Menlo for Powerline:**  
https://github.com/abertsch/Menlo-for-Powerline

## Setup iTerm2

- Install Solarized Theme with iTerm2 (import files from iterm folder).
- Run init script `./init.sh`.
- Change default shell to zsh `chsh -s /bin/zsh`.
- Set default iTerm2 font to "Source Code Pro for Powerline" with 14pt size.

## Install rvm

`curl -L https://get.rvm.io | bash -s stable --autolibs=enable --rails`

## Install npm

tbd

`npm install jsonlint -g'
