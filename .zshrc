# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

zinit light zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit
zinit light Aloxaf/fzf-tab

# NOTE: Must be sourced last
zinit light zsh-users/zsh-syntax-highlighting

export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -a1 --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -a1 --color $realpath'

fpath=(~/.config/zsh/completions $fpath)
typeset -U path cdpath fpath manpath


autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

if [[ $options[zle] = on ]]; then
  eval "$(fzf --zsh)"
fi

eval "$(zoxide init zsh --cmd cd)"
eval "$(direnv hook zsh)"
eval "$(tinty generate-completion zsh)"
if [[ "$TERM_PROGRAM" != "Apple_Terminal" ]]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/modern.omp.toml)"
fi

# History
HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"
HISTDUP=erase
setopt HIST_FCNTL_LOCK
unsetopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY



# Aliases
alias -- branch='git branch --show-current'
alias -- branchhelp='git branch --list | rg -v '\''^\s+?\*|\+'\'' | fzf | awk '\''{$1=$1};1'\''
'
alias -- cat=bat
alias -- diff=delta
alias -- gg=lazygit
alias -- journal='nvim "/home/katie/Sync/Notes/journal/$(date +%Y-%m-%d).md"
'
alias -- la='eza -a'
alias -- ll='eza -l'
alias -- lla='eza -la'
alias -- ls=eza
alias -- lt='eza --tree'
alias -- vi=nvim
alias -- vim=nvim
export EDITOR=nvim
export VISUAL=nvim

bindkey -e

# Activate syntax highlighting in manpages
eval "$(batman --export-env)"
