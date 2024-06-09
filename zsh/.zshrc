# Options
setopt autocd
setopt autolist
setopt automenu
setopt prompt_subst
setopt hist_ignore_dups

# Keybinds
bindkey -v
bindkey -s ^f "tmux-sessionizer\n"

# Aliases
alias ll="ls -l --color=auto"
alias la="ls -la --color=auto"
alias ga="git add"
alias gs="git status"
alias gaa="git add --all"
alias gfap="git fetch --all -p"
alias gl="git log --oneline --decorate --graph"

# Prompt
eval "$(oh-my-posh init zsh -c ~/.config/omp/hriphaestus.toml)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bun completions
[ -s "/Users/hristijanpetreski/.bun/_bun" ] && source "/Users/hristijanpetreski/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
