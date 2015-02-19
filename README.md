`git clone git@github.com:thomas88/dotfiles.git ~/.dotfiles`

## Install common tools with homebrew

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`  

`brew install zsh`  
`brew install git`

## Install applications with cask

`brew install caskroom/cask/brew-cask`

`brew cask install iterm2`

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
