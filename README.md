# dotfiles-example

## Usage
### Clone this repository

```sh
mkdir -p ~/ghq/github.com/yinm
cd ~/ghq/github.com/yinm
git clone git@github.com:yinm/dotfiles-example.git
```

### Install packages

```sh
./homebrew/setup.sh
```

### Setup fish
1. Execute `./fish/setup.sh`
1. Execute `sudo vi /etc/shells` and Insert `/opt/homebrew/bin/fish` at last line
1. Execute `chsh -s /opt/homebrew/bin/fish`
1. Reload Terminal
1. Execute `fish_add_path /opt/homebrew/bin`
