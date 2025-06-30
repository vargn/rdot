# ~/.tmp/dotfiles/profile.sh

# add ~/.local/bin to PATH if needed
[[ ":$PATH:" != *":$HOME/.local/bin:"* ]] && export PATH="$HOME/.local/bin:$PATH"

# source system bashrc and profile
[ -f ~/.bashrc ] && source ~/.bashrc
[ -f ~/.profile ] && source ~/.profile

# source bash tab-completion
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
elif [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
fi

# source custom functions
[ -f "$HOME/.tmp/dotfiles/functions.sh" ] && source "$HOME/.tmp/dotfiles/functions.sh"

# make ~/.tmp/dotfiles/cleanup.sh executable
chmod +x ~/.tmp/dotfiles/cleanup.sh
