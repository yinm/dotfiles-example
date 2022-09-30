#!/usr/bin/env bash

set -eu

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

NAME="fish shell"
SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~/.config/fish)"

info "Setting up $NAME..."

substep_info "Creating files..."
mkdir -p "$DESTINATION/conf.d"

substep_info "Creating symlinks..."
find * -name "*.fish" -o -name "fish_plugins" | while read filename; do
    symlink "$SOURCE/$filename" "$DESTINATION/$filename"
done

substep_info "Clear broken symlinks..."
clear_broken_symlinks "$DESTINATION"

substep_info "Installing fish plugins..."
fish -c "curl -sL git.io/fisher | source && fisher update"

success "Finished setting up $NAME."
