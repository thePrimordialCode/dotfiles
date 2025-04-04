# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "gallois" "fwalch" "half-life" )
# ZSH_THEME_RANDOM_CANDIDATES=( "gallois" "half-life" )
# ZSH_THEME_RANDOM_QUIET=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


plugins=(
  z
  git
  fzf
  sudo
  zsh-autosuggestions
  # zsh-autocomplete
  zsh-syntax-highlighting
  zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

# Aliases
dot () {
  git --git-dir=$HOME/.cfg/ --work-tree=$HOME "$@"
}

alias dst="dot status"
alias da="dot add"
alias daa="dot add ~/{.config/{kitty,nvim,tmux,starship.toml},.zshrc}"
alias dc="dot commit"
# alias dc = "dot commit -amend"
alias dp="dot push"

alias zshrc="nvim ~/.zshrc"
alias tcf="nvim ~/.config/tmux/tmux.conf"
alias kc="nvim ~/.config/kitty/kitty.conf"
alias wcf="nvim ~/.config/wezterm/wezterm.lua"

alias -g b="bat"
alias -g tt="trash"

alias -g v="nvim"
alias -g vf='nvim $(fzf)'
alias -g vu="NVIM_APPNAME=nvim-urizen nvim"

alias -g vi="nvim"
alias -g vim="nvim"
alias -g nano="nvim"

alias ls="eza --icons=always"

# vv() {
#   # Assumes all configs exist in directories named ~/.config/nvim-*
#   local config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)
#
#   # If I exit fzf without selecting a config, don't open Neovim
#   [[ -z $config ]] && echo "No config selected" && return
#
#   # Open Neovim with the selected config
#   NVIM_APPNAME=$(basename $config) nvim $@
# }

PATH="~/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="~/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="~/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"~/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=~/perl5"; export PERL_MM_OPT;

# export PATH=$PATH:/usr/local/zig/bin
export PATH=$PATH:$HOME/.local/bin/

# fuzzy finder
export FZF_DEFAULT_OPTS="--info=inline --preview '[[ -d {} ]] && echo "" || (bat --color=always {})'"
export FZF_DEFAULT_COMMAND='fd . --hidden --exclude ".git"'
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh

# precmd() {
#     precmd() {
#         echo
#     }
# }

# clifm
source /usr/share/clifm/functions/cd_on_quit.sh

# starship
eval "$(starship init zsh)"
