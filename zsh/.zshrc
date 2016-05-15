
# Zsh start up sequence:
#  1) /etc/zshenv   -> Always run for every zsh.   (login + interactive + other)
#  2)   ~/.zshenv   -> Usually run for every zsh.  (login + interactive + other)
#  3) /etc/zprofile -> Run for login shells.       (login)
#  4)   ~/.zprofile -> Run for login shells.       (login)
#  5) /etc/zshrc    -> Run for interactive shells. (login + interactive)
#  6)   ~/.zshrc    -> Run for interactive shells. (login + interactive)
#  7) /etc/zlogin   -> Run for login shells.       (login)
#  8)   ~/.zlogin   -> Run for login shells.       (login)

# Source powerlevel9k
source ${ZDOTDIR}/.zpowerlevelrc

# Source Prezto
if [[ -s "${ZDOTDIR}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR}/.zprezto/init.zsh"
fi

# FIXME
# 	Path alias-tips path and external repo.
# 	add chpwd function
# 	Source other external modules
source ${ZDOTDIR}/modules/alias-tips/alias-tips.plugin.zsh
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1

source ${ZDOTDIR}/aliases.zsh
source ${ZDOTDIR}/bindings.zsh
source ${ZDOTDIR}/history.zsh
