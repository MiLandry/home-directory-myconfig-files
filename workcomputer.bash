#!/usr/bin/env bash
#start of work machine

#work alias
alias ccl=kubectl
alias k=kubect
alias kc=kafkacat
# alias br=echo 'snth'
alias br=reset
# alias br=~/workcomputer.bash
complete -F __start_kubectl ccl

# you use if else because host machine names at work can change based off vpn
echo "workcomputer.bash running"
# source '.wd'
source ~/.wd
 
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
    _echo-item "open story and make sure its the right one (os) "
    _echo-item "set story descriptions (Y grabber, then s) "
    _echo-item "open a pull request for all three (pr)"
    _echo-item "Code review your own code for all three"
    _echo-item "nuff said the three pages and submit(Y grabber, then p)"
    _echo-item "add screenshots to PR if neccessary"
    _echo-item " ADD PR links to ticket (y grabber then Z)"
    _echo-item "set ticket to code review"
    _echo-item "add screenshots to ticket if necessary"
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
    _echo-item "note that YOUR stuff is in the left window, "
    _echo-item "commit after resolution"
    _echo-item "run unit tests"
    _echo-item "merge down (ma), maybe its possible to accept a single side if conflicts"
    _echo-item "poosh (pf)"

}


function klogs() {
    k logs $1 | bunyan
}

function kget() {
    k get po | grep $1
}

# this seems to break my shell
# TMPDIR=${TMPDIR:-/tmp}  # default to /tmp if TMPDIR isn't set
# F=$(mktemp $TMPDIR/tosubl-XXXXXXXX)
# cat >| $F  # use >| instead of > if you set noclobber in bash
# subl $F
# sleep .3  # give subl a little time to open the file
# rm -f $F  # file will be deleted as soon as subl closes it


# KM Stuff
# function ss() {
#     osascript -e 'tell application "Keyboard Maestro Engine" to do script "FCAD61F1-352E-4DD3-8489-DA7A38281021"'
# }

function oss() {
    osascript -e 'tell application "Keyboard Maestro Engine" to do script "1FB6E951-25A3-4CFE-84C0-FAF0D9B9D68E"'
}




# end of work machine
