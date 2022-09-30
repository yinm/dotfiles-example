# dotfiles-example

## Usage
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
