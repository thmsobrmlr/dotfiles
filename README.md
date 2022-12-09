## Setting up a new machine

- [ ] Update MacOS
  -  -> System Settings… -> General -> Software Update.
  - Install the latest MacOS update.
- [ ] Update App Store software
  - [ ] Delete "GarageBand" from Applications.
  - [ ] App Store -> Updates -> Update All.
- [ ] Configure basic settings (Restart afterwards)

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

- [ ] Configure basic settings (menu)
  - **Desktop & Dock**
    - [ ] Automatically show and hide the Dock - On
  - **Lock Screen**
    - [ ] Start Screen Saver when inactive - never
    - [ ] Turn display off on battery when inactive - For 10 minutes
  - **Keyboad**
    - [ ] Press (world) key to - Do nothing
    - [ ] Keyboard navigation - On
    - [ ] Keyboard Shortcuts... -> App Shortcuts
      - All Applications -> Show Help menu - Off
      - Google Chrome
        - Select Previous Tab - Alt-Cmd-8
        - Select Next Tab - Alt-Cmd-9
  - **Mouse** (needs connected Magic Mouse)
    - [ ] Secondary click - Click Right Side
  - **Trackpad**
    - [ ] Click - Light
    - [ ] Force Click and haptic feedback - Off
    - [ ] Look up & data detectors - Off
    - [ ] Secondary click - Click or Tap with Two Fingers
    - [ ] Tap to click - On
  - **Accessibility**
    - [ ] Speed up scroll speed
      - Pointer Control -> Trackpad Options… -> Scroll speed - Bunny
      - Pointer Control -> Mouse Options… -> Scroll speed - Bunny
  - **Wallpaper** (after cloning this repo as below)
    - [ ] Add folder `~/.dotfiles/resources/wallpapers`
    - [ ] Pick one :)
  - **Desktop & Dock**
    - [ ] Hot Corners…
      - Top right: Mission Control
      - Bottom right: Desktop
      - Bottom left: Launchpad
- [ ] Setup ssh for git

  - [ ] [Generate a new ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

    ```
    ssh-keygen -t ed25519 -C "your_email@example.com"

    touch ~/.ssh/config
    ```

    ```
    Host *.github.com
      AddKeysToAgent yes
      IdentityFile ~/.ssh/id_ed25519
    ```

    ```
    ssh-add ~/.ssh/id_ed25519
    ```

  - [ ] Add the key to GitHub
    ```
    pbcopy < ~/.ssh/id_ed25519.pub
    ```
    On GitHub: Settings -> SSH and GPG keys -> New SSH key

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

- [ ] Install App Store apps
  - [ ] Magnet
  - [ ] Airmail

## Hostname

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

## Node

1. [Install nvm](https://github.com/nvm-sh/nvm)

   `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`

2. Install latests active lts

   `nvm install --lts --latest-npm`

3. Install yarn

   `npm install -g yarn`
