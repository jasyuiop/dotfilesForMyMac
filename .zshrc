# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/jasyuiop/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugins
plugins=(git extract sudo systemadmin tmux npm yarn brew zsh-autosuggestions zsh-syntax-highlighting colored-man-pages)

source $ZSH/oh-my-zsh.sh

# User configuration
eval "$(/opt/homebrew/bin/brew shellenv)"
export EDITOR='nvim'
#alias vim='nvim'

# Tmux Sessions
alias mySession='tmux new-session -d -s "My Session"'
alias workSession='tmux new-session -d -s "Work Session"'
alias sourcetmux='tmux source ~/.tmux.conf'

# git config.
alias dotfiles='/usr/bin/git --git-dir=/Users/jasyuiop/.cfg/ --work-tree=/Users/jasyuiop'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
