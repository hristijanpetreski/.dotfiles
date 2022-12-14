# Options
setopt autocd
setopt autolist
setopt automenu
setopt hist_ignore_dups

# Keybinds
bindkey -s ^f "tmux-sessionizer\n"

# Aliases
alias ll="ls -l --color=auto"
alias la="ls -la --color=auto"

# Oh My Posh (only apply if terminal program is tmux or iTerm2
if [[ $TERM_PROGRAM = "iTerm.app" ]] || [[ $TERM_PROGRAM = "tmux" ]]; then
    eval "$(oh-my-posh init zsh --config ~/.config/omp/hriphaestus.omp.json)"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
