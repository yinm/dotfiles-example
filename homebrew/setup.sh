#!/usr/bin/env bash

set -eu

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Installing Brewfile packages..."
brew bundle

success "Finished installing Homebrew and Brewfile packages."
