
# With zsh you can have global (-g) aliases (for common patterns) and suffix (-s) aliases
# Examples:
#	alias -s pdf=xpdf       ; # executing 'foo.pdf' translates to 'xpdf foo.pdf'
#	alias -g TT='| tail -n' ; # can be used as 'history TT 10'

alias sz='source ${ZDOTDIR}/.zshrc'

# {{{ General ...
alias -- .='pwd'
alias -- ..='cd ..'
alias -- /='cd /'
alias -- -='cd -'

alias cp='cp -v -i'
alias mv='mv -v -i'
alias rm='nocorrect rm -v -i'
alias h='history'
alias chmodx='chmod +x'
# }}}

# Sublime Text
alias st='subl'

# {{{ Environment modules ...
alias modld='module load'
alias moduld='module unload'
alias modrld='module reload'
alias modall='module avail'
alias modls='module list'
alias modpg='module purge'
alias modswp='modpg; modld'
# }}}

# {{{ Globals ...
alias -g G="| grep"
alias -g L="| less"
# }}}
