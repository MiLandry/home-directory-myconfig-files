#!/bin/bash
#This script runs at the start of every new terminal shell
# This is the file you want to use to configure bash, there is also .bashrc but this one is better to use.

#alias land
alias chrome="open -a 'Google Chrome'"
alias st='subl'
alias cls='clear'
alias killn='killall -9 node; sudo killall -9 node;'
alias vim='issw com.apple.keylayout.US; vim'
alias gas='git status'
alias gpull='git pull'
alias paste='pbpaste'
#also you should rely on keyboard maestro to blow up typed aliases

## just put new science experiments below here

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
export EDITOR='subl -w'

# Add Haskell GHC 7.10.3 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.3.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

#load nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
nvm use 8

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
personalComputer=TODO
if [ "$HOSTNAME" = $personalComputer ]; then
echo "you are at home"
# added by Anaconda2 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

fi
# end of personal machine

#work machine
workComputer=M-Landrys-MacBook-Pro.local
if [ "$HOSTNAME" = $workComputer ]; then
  echo "you are at work"

  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home"
  export PATH=$JAVA_HOME/bin:$PATH

  export ANT_HOME="/opt/onlinemessenger/apache-ant-1.9.13"
  export PATH=$ANT_HOME/bin:$PATH

  export GRADLE_HOME="/opt/onlinemessenger/gradle-3.5.1"
  export PATH=$GRADLE_HOME/bin:$PATH

  export GROOVY_HOME="/opt/onlinemessenger/groovy-1.8.9"
  export PATH=$GROOVY_HOME/bin:$PATH

  export PATH=${PATH}:/Library/PostgreSQL/9.6/bin

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" #  This loads nvm
fi



