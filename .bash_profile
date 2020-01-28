#!/bin/bash
#This script runs at the start of every new terminal shell
# This is the file you want to use to configure bash, there is also .bashrc but this one is better to use.
echo "mike's .bash_profile"

#alias land
alias chrome="open -a 'Google Chrome'"
alias st='subl'
alias cls='clear'
alias killn='killall -9 node; sudo killall -9 node;'
alias vim='issw com.apple.keylayout.US; vim'
alias gas='git status'
alias gpull='git pull'
alias paste='pbpaste'
alias rn='mv'
alias derek='list-all-helpers'
alias derek-load='source ~/lib/functions/work.bash'
alias derekgit='list-git-helpers'
alias dgit='list-git-helpers'

# alias wd = 'title $1 && wd $1'
#also you should rely on keyboard maestro to blow up typed aliases

## just put new science experiments
## below here (that you will run in both personal and work boxes)
## new science experiments probably belong to a specific box


######################################################################

#rename things in iterm
function title {
    echo -ne "\033]0;"$*"\007"
}

# for git bosh on mac
source ~/.git-prompt.sh
PS1='\W$(__git_ps1 " (%s)")\$ '

#add npm globals to PATH
export PATH==/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

#make sublime editor
# export EDITOR='subl -w'

#make webstorm editor
export EDITOR='webstorm'

#export rust to path
#export PATH="~/.cargo/bin:$PATH"


# WarpDir (v1.6.0, appended on 2017-09-15 16:23:54 -0400) BEGIN
[[ -f ~/.bash_wd ]] && source ~/.bash_wd
# WarpDir (v1.6.0, appended on 2017-09-15 16:23:54 -0400) END

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#personal mac machine
if [ "$HOSTNAME" = mlandrys-Air ]; then
echo 'mike computer'

fi

#personal machine
personalComputer=M-Landrys-MacBook-Pro.local
if [ "$HOSTNAME" = $personalComputer ]; then
  source ~/personalcomputer.bash
else

  source ~/workcomputer.bash
fi
# end of machine specific logic

export NVM_DIR="/Users/michael.landry/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
