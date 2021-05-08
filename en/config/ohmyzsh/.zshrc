if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# EXPORT PATH
export ZSH="/home/tec/.oh-my-zsh"
# export PATH=$PATH:/usr/local/go/bin
# export PATH=$PATH:/opt/chromedriver_linux

# THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# ALIAS
## shortcuts bash, folder.
alias c="clear"
alias de="cd ~/Desktop"
alias del="gio trash"
alias dow="cd ~/Downloads"
alias e="exit"
alias of="xdg-open ."
alias ..="cd ../"
alias ...="cd ../.."
alias ..la="cd ../ && la"
alias ..ll="cd ../ && ll"
alias ..ls="cd ../ && ls"

## shutdown, reboot and timing close
alias rb="reboot"
alias scancel="shutdown -c"
alias snow="shutdown now"
alias stime="shutdown -h"

## program
alias speedtest='cd /opt/speedtest/ && ./speedtest'

## npm
alias ni="npm install"
alias nrb="npm run build"
alias nrd="npm run dev"
alias nrs="npm run start"
alias nrt="npm run test"
alias nrsr="npm run serve"

# plugins
plugins=(git extract web-search yum git-extras docker vagrant colored-man-pages zsh-syntax-highlighting zsh-autosuggestions autoenv celery)


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ZSH/oh-my-zsh.sh