#start of work machine
# you use if else because host machine names at work can change based off vpn
echo "you are at work says bash_profile"

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

#song and dance
function sad() {

    function _echo-item() {
        echo -e "${LT_BLUE}- [ ] ${LT_GRAY}$1${NC}"
    }

    _echo-item "You worked the story on a branch cut from master"
    _echo-item "You worked the story"
    _echo-item "ESLint npm run lint"
    _echo-item "Unit Tests use webstorm"
    _echo-item "  "
    _echo-item "  "
    _echo-item "cut dev branch (should already been done)"
    _echo-item "synchronize all branches (ybb)"
    _echo-item "merge master feature into dev mfmd"
    _echo-item "   mfmd"
    _echo-item "push to origin"
    _echo-item "git push -u origin"
    _echo-item "cut stable branch (should already be done)"
    _echo-item "merge master feature into stable"
    _echo-item "   mfms"
    _echo-item "push to origin"
    _echo-item "    git push -u origin"
    _echo-item "change branch BACK TO MASTER FEATURE!!!"
    _echo-item "cfm"
    _echo-item "  "
    _echo-item "  "
    _echo-item "open story (os) "
    _echo-item "set story descriptions (Y grabber, then s) "
    _echo-item "open a pull request for all three"
    _echo-item "add screenshots to PR if neccessary"
    _echo-item "update ticket ADD PR links AND update status"
    _echo-item "code review"
    _echo-item "   "
    _echo-item "   "
    _echo-item "Any additional changes... make sure you are on master branch..."
    _echo-item "commit changes"
    _echo-item "push changes, then merge down to stable and push and merge to develop and push"


}



# end of work machine
