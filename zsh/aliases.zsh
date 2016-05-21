
#--------------------------------------------------------------------
# Global aliases
#--------------------------------------------------------------------

# With zsh you can have global (-g) aliases (for common patterns) and suffix (-s) aliases
# Examples:
#	alias -s pdf=xpdf       ; # executing 'foo.pdf' translates to 'xpdf foo.pdf'
#	alias -g TT='| tail -n' ; # can be used as 'history TT 10'

alias -g G="| grep"
alias -g L="| less"

#--------------------------------------------------------------------
# Directory movement
#--------------------------------------------------------------------

alias -- .='pwd'
alias -- ..='cd ..'
alias -- /='cd /'
alias -- -='cd -'

#--------------------------------------------------------------------
# Environment modules
#--------------------------------------------------------------------

alias modld='module load'
alias moduld='module unload'
alias modrld='module reload'
alias modall='module avail'
alias modls='module list'
alias modpg='module purge'
alias modswp='modpg; modld'

#--------------------------------------------------------------------
# Oddball stuff
#--------------------------------------------------------------------

alias cp='cp -v -i'
alias mv='mv -v -i'
alias rm='nocorrect rm -v -i'
alias chmodx='chmod +x'

alias h='history'
alias st='subl'

alias sz='source ${ZDOTDIR}/.zshrc'
