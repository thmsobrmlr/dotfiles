## Setting up a new machine

- [ ] Update MacOS
  -  -> System Settings… -> General -> Software Update.
  - Install the latest MacOS update.
- [ ] Update App Store software
  - [ ] Delete "GarageBand" from Applications.
  - [ ] App Store -> Updates -> Update All.
- [ ] Configure basic settings

  ```
  # speed up mouse tracking
  defaults write -g com.apple.mouse.scaling 8

  # speed up key repeat
  defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
  defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
  ```

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

## Hostname

`sudo scutil --set HostName thomas-mbp.local`

### Install

```

### Install common tools

`brew install zsh`
`brew install git`
`brew install starship`
`brew install git-delta`
`brew install colordiff`
`brew install dty1er/tap/kubecolor`
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
```
