
# ===== Basics ...

setopt INTERACTIVE_COMMENTS # Allow comments even in interactive shells.
setopt NOTIFY # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt CHECK_JOBS # Report the status of background and suspended jobs before exiting a shell with job control; a second attempt to exit the shell will succeed.
setopt EXTENDED_GLOB # treat #, ~, and ^ as part of patterns for filename generation

unsetopt BEEP # Don't beep on error.
unsetopt RM_STAR_SILENT # Do query the user before executing 'rm *' or 'rm path/*'.

# ===== Changing Directories ...

setopt AUTO_CD # If you type foo, and it isn't a command, and it is a directory in your cdpath, perform the cd command to that directory.
setopt CDABLEVARS # If the argument to a cd command is not a directory, and does not begin with a slash, try to expand the expression as if it were preceded by a ‘~’.

# ===== Directory Stack ...

setopt AUTO_PUSHD # Make cd push the old directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS # Don't push multiple copies of the same directory onto the directory stack.

# ===== History ...

setopt APPEND_HISTORY # Allow multiple terminal sessions to all append to one zsh command history.
setopt EXTENDED_HISTORY # Save timestamp of command and duration.
#setopt INC_APPEND_HISTORY # Add comamnds as they are typed, don't wait until shell exit. Should be turned off if SHARE_HISTORY option is in effect.
setopt HIST_EXPIRE_DUPS_FIRST # When trimming history, lose oldest duplicates first.
setopt HIST_IGNORE_DUPS # Do not enter command lines into the history list if they are duplicates of the previous event.
setopt HIST_IGNORE_ALL_DUPS # If a new command line being added to the history list duplicates an older one, the older command is removed from the list (even if it is not the previous event).
setopt HIST_IGNORE_SPACE # Do not enter command lines into the history list if they begin with a blank.
setopt HIST_FIND_NO_DUPS # When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous.
setopt HIST_REDUCE_BLANKS # Remove superfluous blanks from each command line being added to the history list.
setopt HIST_VERIFY # Whenever the user enters a line with history substitution, don't execute the line directly; instead, perform history substitution and reload the line into the editing buffer.
setopt HIST_NO_STORE # Remove the history (fc -l) command from the history when invoked.
setopt SHARE_HISTORY # This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file (allows sharing between multiple terminals).
setopt HIST_SAVE_NO_DUPS # When writing out the history file, older commands that duplicate newer ones are omitted.

# ===== Completion ...

setopt ALWAYS_TO_END # When completing from the middle of a word, move the cursor to the end of the word.
setopt AUTO_MENU # Show completion menu on successive tab press. needs unsetop menu_complete to work.
setopt AUTO_NAME_DIRS # Any parameter that is set to the absolute name of a directory immediately becomes a name for that directory.
setopt COMPLETE_IN_WORD # Allow completion from within a word/phrase.

unsetopt MENU_COMPLETE # Do not autoselect the first completion entry.

# ===== Correction ...

setopt CORRECT # Spelling correction for commands.
setopt CORRECTALL # Spelling correction for arguments.

# ===== Prompt ...

setopt PROMPT_SUBST # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt.
setopt TRANSIENT_RPROMPT # Only show the rprompt on the current prompt.

# ===== Scripts and Functions ...

setopt MULTIOS # Perform implicit tees or cats when multiple redirections are attempted. (more info.: http://zsh.sourceforge.net/Doc/Release/Redirection.html#Redirection)
