export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

plugins=(
  git
  zsh-autosuggestions
  battery
  branch
  qrcode
  nvm
)

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7
zstyle ':omz:update' verbose default

DISABLE_LS_COLORS=true

HIST_STAMPS="dd.mm.yyyy"

RPROMPT='$(battery_pct_prompt)'
BATTERY_CHARGING="⚡️"

source $ZSH/oh-my-zsh.sh

PATH=~/.console-ninja/.bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
