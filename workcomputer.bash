#start of work machine

#work alias
alias ccl=kubectl
alias k=kubectl
alias br=~/workcomputer.bash
complete -F __start_kubectl ccl

# you use if else because host machine names at work can change based off vpn
echo "you are at work says bash_profile"
# source '.wd'
source ~/.wd
 
#fiserv stuff
# # export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home"
# export PATH=$JAVA_HOME/bin:$PATH

# export ANT_HOME="/opt/onlinemessenger/apache-ant-1.9.13"
# export PATH=$ANT_HOME/bin:$PATH

# export GRADLE_HOME="/opt/onlinemessenger/gradle-3.5.1"
# export PATH=$GRADLE_HOME/bin:$PATH

# export GROOVY_HOME="/opt/onlinemessenger/groovy-1.8.9"
# export PATH=$GROOVY_HOME/bin:$PATH

# export PATH=${PATH}:/Library/PostgreSQL/9.6/bin

#end of fiserv ---------------------------------
#PPS stuff

# Username

export MXC_USERNAME="michael.landry"
export MXC_USERID='b8dae640-ab79-58b2-89a8-d5c153e4ed03'

# Broker CLI variables

export ACCOUNT_ID="4928c465-1ec5-5dc3-a349-54230f0cd3a2"
export GH_USERNAME="michael-landry"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" #  This loads nvm

#load derek bash helper
source ~/lib/functions/work.bash


#custom funtions

function openWS() {
    source ~/.wd
    wd $1
    code .
}

function cccl() {
  echo "hw"
}

#song and dance
function sad() {

    function _echo-item() {
        echo -e "${LT_BLUE}- [ ] ${LT_GRAY}$1${NC}"
    }

    _echo-item "set your story (ss)"
    _echo-item "get latest changes, ie sync base branches with upstream (yb)"
    _echo-item "cut new feature branches (sf)"
    _echo-item "work the story"
    _echo-item "ESLint npm run lint"
    _echo-item "Unit Tests use webstorm"
    _echo-item "  "
    _echo-item "  "
    _echo-item "get latest changes, ie sync base branches with upstream (yb)"
    _echo-item "sync features with base branches (yf)"
    _echo-item "merge down (ma)"
    _echo-item "poosh (pf)"
    _echo-item "  "
    _echo-item "  "
    _echo-item "double check the current story (ss)"
    _echo-item "open story (os) "
    _echo-item "set story descriptions (Y grabber, then s) "
    _echo-item "open a pull request for all three (pr)"
    _echo-item "Code review your own code for all three"
    _echo-item "nuff said the three pages and submit(Y grabber, then p)"
    _echo-item "add screenshots to PR if neccessary"
    _echo-item "update ticket ADD PR links AND update status"
    _echo-item "code review"
    _echo-item "   "
    _echo-item "   "
    _echo-item "Any additional changes... make sure you are on master branch..."
    _echo-item "double check the current story (os, then maybe ss)"
    _echo-item "sync base branches with upstream (yb)"
    _echo-item "sync base with feature (yf)"
    _echo-item "commit changes"
    _echo-item "merge down (ma)"
    _echo-item "poosh (pf)"
    _echo-item "follow up with people?"
    _echo-item "   "
    _echo-item "   "

    _echo-item "merge conflicts? this probably happened after a yf"
    _echo-item "resolve using webstorm (show local changes, then merge, then scroll down and click on the arrows)"
    _echo-item "commit after resolution"
    _echo-item "run unit tests"
    _echo-item "merge down (ma), maybe its possible to accept a single side if conflicts"
    _echo-item "poosh (pf)"

}



# end of work machine
