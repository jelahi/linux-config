
#-------------------------------------------------------------------
# Automatically run ls after every cd
# Source: http://stackoverflow.com/questions/3964068/zsh-automatically-run-ls-after-every-cd
#-------------------------------------------------------------------

chpwd() {
    emulate -L zsh
    ls
}

#--------------------------------------------------------------------
# Search for running processes
# Source: http://onethingwell.org/post/14669173541/any
# Usage: any <search keyword>
#--------------------------------------------------------------------

any() {
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any " >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}

#-------------------------------------------------------------------
# Display a neatly formatted path
# Source: http://zanshin.net/2013/02/02/zsh-configuration-from-the-ground-up
#-------------------------------------------------------------------

path() {
  echo $PATH | tr ":" "\n" | \
    awk "{ sub(\"/usr\",   \"$fg_no_bold[green]/usr$reset_color\"); \
           sub(\"/bin\",   \"$fg_no_bold[blue]/bin$reset_color\"); \
           sub(\"/opt\",   \"$fg_no_bold[cyan]/opt$reset_color\"); \
           sub(\"/sbin\",  \"$fg_no_bold[magenta]/sbin$reset_color\"); \
           sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
           print }"
}

#--------------------------------------------------------------------
# Displays mounted drive information in a nicely formatted manner
# Source: http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained
#--------------------------------------------------------------------

function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

#--------------------------------------------------------------------
# Shell function to define words
# Source: http://vikros.tumblr.com/post/23750050330/cute-little-function-time
#--------------------------------------------------------------------

givedef() {
  if [[ $# -ge 2 ]] then
    echo "givedef: too many arguments" >&2
    return 1
  else
    curl "dict://dict.org/d:$1"
  fi
}

#--------------------------------------------------------------------
# Show all 256 colors with color number
# Source: http://www.commandlinefu.com/commands/view/5876/show-numerical-values-for-each-of-the-256-colors-in-zsh
#--------------------------------------------------------------------

spectrum_ls() {
  txt="The quick brown fox jumps over the lazy dog"
  if (( $# > 0)); then
    txt=$1
  fi
  for code in {000..255}; do
    print -P -- "$code: %F{$code}$txt%f"
  done
}
