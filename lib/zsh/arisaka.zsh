#!/usr/bin/env zsh
# Sets up functions for interacting with Arisaka.

arilog() {
    "$ARI_BIN/arisaka/arilog" "$@"
}

export -f arilog
