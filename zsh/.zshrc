# Options
setopt autocd
setopt autolist
setopt automenu
setopt sharehistory
setopt prompt_subst
setopt appendhistory
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_find_no_dups
HISTSIZE=5000

# Keybinds
bindkey -v
bindkey -s ^f "tmux-sessionizer\n"

# Aliases
alias ll="eza -l --icons --group-directories-first"
alias la="eza -laa --icons --group-directories-first"
alias ga="git add"
alias gs="git status"
alias gaa="git add --all"
alias gfap="git fetch --all -p"
alias gl="git log --oneline --decorate --graph"

# Prompt
eval "$(oh-my-posh init zsh -c ~/.config/omp/hriphaestus.toml)"

# Mise
eval "$(mise activate zsh)"
