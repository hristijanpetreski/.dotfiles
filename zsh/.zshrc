# Options
setopt autocd
setopt autolist
setopt automenu
setopt prompt_subst
setopt hist_ignore_dups

# Keybinds
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
function git_prompt_info() {
    if ! git rev-parse --get-dir &> /dev/null; then
            return 0
    fi

    local ref
    ref=$(git symbolic-ref --short HEAD 2> /dev/null) \
        || ref=$(git describe --tags --exact-match HEAD 2> /dev/null) \
        || ref=$(git rev-parse --short HEAD 2> /dev/null) \
        || return 0

    echo "[${ref:gs/%/%%}] "
}

function get_kanye_quote() {
    local quote=$(curl -s https://api.kanye.rest | jq -r '.quote')
    echo $quote; 
}

PROMPT='%~ %F{green}$(git_prompt_info)%f> '

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bun completions
[ -s "/Users/hristijanpetreski/.bun/_bun" ] && source "/Users/hristijanpetreski/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
