export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7
zstyle ':omz:update' verbose default

source $ZSH/oh-my-zsh.sh
