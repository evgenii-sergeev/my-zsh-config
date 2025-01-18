# Zsh configuration file

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# Enable command completion
autoload -Uz compinit
compinit

# Enable colors
autoload -Uz colors
colors

# Function to detect terminal background and set colors
function set_terminal_colors() {
    # Get terminal background brightness using a standard OSC sequence
    local bg_brightness=$(tput colors)

    if [[ "$bg_brightness" -le 8 ]]; then
        # Dark background
        export LSCOLORS="Gxfxcxdxbxegedabagacad"
        PROMPT='%F{cyan}%~%f${vcs_info_msg_0_} $ '
    else
        # Light background
        export LSCOLORS="ExFxCxDxBxegedabagacad"
        PROMPT='%F{blue}%~%f${vcs_info_msg_0_} $ '
    fi
}

# Apply color settings dynamically
set_terminal_colors

# Custom prompt with username, hostname, and current directory
PROMPT='%F{cyan}%~%f${vcs_info_msg_0_} $ '

# Useful aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'

# Shell options
setopt autocd                # Change directory without cd
setopt interactive_comments  # Allow comments in interactive shell
setopt prompt_subst          # Enable parameter expansion in prompt

# Keyboard bindings
bindkey -e                   # Emacs-style key bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^R' history-incremental-search-backward

# Enable typo correction
setopt correct

# Load vcs_info for Git integration
autoload -Uz vcs_info
precmd() { vcs_info }

# Configure the format of the Git information
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%f%F{red}%u%f%F{green}%c%f'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'

# Case-insensitive completion and history search
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Automatically complete first menu item
setopt MENU_COMPLETE

# Additional completion options
zstyle ':completion:*' completer _complete _match _approximate

# Fuzzy matching with corrections
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Case-insensitive file and directory completion
zstyle ':completion:*' file-patterns '%p:globbed-files *(-/):directories'

# Highlight selected completion item
zstyle ':completion:*' menu select

# Show completion menu on successive tab press
setopt AUTO_MENU

# Adjust terminal colors on every new prompt
preexec_functions+=set_terminal_colors
