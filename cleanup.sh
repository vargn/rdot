#!/bin/bash

# cleanup function
cleanup() {
    echo "Cleaning up session..."
    rm -rf "$HOME/.tmp/dotfiles"
    rm -f "$HOME/.local/bin/riff"
    rm -f "$HOME/.local/bin/fzf"
}

# cleanup on shell exit
cleanup
