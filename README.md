## Setting up a new machine

### Update software and remove things I don't use

- [ ] Update MacOS
  -  -> System Settings… -> General -> Software Update.
  - Install the latest MacOS update.
- [ ] Delete large preinstall software that I don't use
  - [ ] Delete "GarageBand" from Applications.
  - [ ] Delete "iMovie" from Applications.
  - [ ] Delete "Keynote" from Applications.
  - [ ] Delete "Pages" from Applications.
  - [ ] Delete "Numbers" from Applications.
- [ ] Update App Store software
  - [ ] App Store -> Updates -> Update All.

### System settings

#### Hostname

- [ ] General > About > Click the Name field at the top > Enter desired name e.g. "Thomas's MacBook Pro (Personal)"
- [ ] Confirm with:
  ```
  scutil --get ComputerName
  scutil --get LocalHostName
  scutil --get HostName
  hostname

  Thomas's MacBook Pro (Personal)
  Thomass-MacBook-Pro-Personal
  HostName: not set
  Thomass-MacBook-Pro-Personal.local
  ```

#### Desktop & Dock
- [ ] Automatically show and hide the Dock - On

#### Lock Screen
- [ ] Start Screen Saver when inactive - never
- [ ] Turn display off on battery when inactive - For 10 minutes

#### Keyboard
- [ ] Press (world) key to - Do nothing
- [ ] Keyboard navigation - On
- [ ] Keyboard Shortcuts... -> App Shortcuts
  - All Applications -> Show Help menu - Off
  - Google Chrome/Brave
    - Select Previous Tab - ⌥⌘8
    - Select Next Tab - ⌥⌘9

#### Mouse (needs connected Magic Mouse)
- [ ] Secondary click - Click Right Side

#### Trackpad
- [ ] Click - Light
- [ ] Force Click and haptic feedback - Off
- [ ] Look up & data detectors - Off
- [ ] Secondary click - Click or Tap with Two Fingers
- [ ] Tap to click - On

#### Accessibility
- [ ] Speed up scroll speed
  - Pointer Control -> Trackpad Options… -> Scroll speed - Bunny
  - Pointer Control -> Mouse Options… -> Scroll speed - Bunny

#### Desktop & Dock
- [ ] Hot Corners…
  - Top right: Mission Control
  - Bottom right: Desktop
  - Bottom left: Launchpad

#### Universal Control
- [ ] Configure accordingly

### System settings - Terminal (Restart afterwards)

#### Mouse, trackpad and keyboard settings

```
# speed up mouse and trackpad tracking
defaults write -g com.apple.mouse.scaling 8
defaults write -g com.apple.trackpad.scaling 8

# disable press and hold e.g. for umlauts
defaults write -g ApplePressAndHoldEnabled -bool false

# speed up key repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
```

### Setup git

Follow the [1Password SSH key management guide](https://developer.1password.com/docs/ssh/manage-keys).

### Clone .dotfiles

- [ ] Clone and bootstrap these dotfiles
  - [ ] Clone the repository to `~/.dotfiles`:
    ```
    git clone git@github.com:thmsobrmlr/dotfiles.git ~/.dotfiles
    ```
  - [ ] Create the required symlinks with the init script:
    ```
    cd ~/.dotfiles && ./symlink.sh
    ```
- [ ] Install [Homebrew](https://brew.sh/)
  - [ ] Download and install:
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
  - [ ] Add to `.zprofile`:
    ```
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```
- [ ] Install apps with [Homebrew Cask](https://formulae.brew.sh/cask/)

  ```
  brew install --cask 1password
  brew install --cask google-chrome
  brew install --cask firefox
  brew install --cask iterm2
  brew install --cask slack
  brew install --cask zoom
  brew install --cask notion
  brew install --cask visual-studio-code
  brew install --cask spotify
  brew install --cask figma
  brew install --cask sourcetree
  brew install --cask docker
  brew install --cask flux
  brew install --cask skitch
  ```

- [ ] Install cli utils with Homebrew

  `brew install zsh`
  `brew install git`
  `brew install starship`
  `brew install git-delta`
  `brew install colordiff`
  `brew install dty1er/tap/kubecolor`
  `brew install kubectx` - kubectx and kubens
  `brew install act` - run github actions locally
  `brew install doctl` - digital ocean command line tools
  `brew install rbenv ruby-build` - rbenv
  `brew install pyenv` - pyenv
  `brew install gh` - official github cli
  `brew install fig`
  `brew install fastlane`
  `brew install fzf` - ctrl+r history search and more
  `brew install ctop` - top for containers / docker

- [ ] Install App Store apps
  - [ ] Magnet
  - [ ] Airmail



`sudo scutil --set HostName thomas-mbp.local`

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

## Keys

### SSH Key (GitHub ssh)

_tbd_

### GPG Key (GitHub verified commits)

Use ssh key instead:
https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key#telling-git-about-your-ssh-key

```
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true
```

## Node

1. [Install nvm](https://github.com/nvm-sh/nvm)

   `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`

2. Install latests active lts

   `nvm install --lts --latest-npm`

3. Install yarn

   `npm install -g yarn`
