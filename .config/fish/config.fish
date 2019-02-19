# clear to cls
alias cls="clear"

# clear to cls
alias gas="git status"

# define hostname if not already defined
if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
end


#work machine
set workComputer M-Landrys-MacBook-Pro.local
echo "$hostname"
echo "$workComputer"

if test "$hostname" = "$workComputer"
  echo "you are at work"
	else 
		echo "not at work"


  # export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home"
  # export PATH=$JAVA_HOME/bin:$PATH
  set --export JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
  set -gx PATH /usr/local/go/bin $PATH

  # export ANT_HOME="/opt/onlinemessenger/apache-ant-1.9.13"
  # export PATH=$ANT_HOME/bin:$PATH

  # export GRADLE_HOME="/opt/onlinemessenger/gradle-3.5.1"
  # export PATH=$GRADLE_HOME/bin:$PATH

  # export GROOVY_HOME="/opt/onlinemessenger/groovy-1.8.9"
  # export PATH=$GROOVY_HOME/bin:$PATH

  # export PATH=${PATH}:/Library/PostgreSQL/9.6/bin

  # export NVM_DIR="$HOME/.nvm"
  # [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" #  This loads nvm
end


## Lenguaje Go
set --export GOROOT /usr/local/go
set -gx PATH /usr/local/go/bin $PATH
#set -gx PATH GOROOT/bin $PATH
set --export GOPATH $HOME/GoProjects
set -gx PATH $GOPATH/bin $PATH

# ## AppEngine para GO
# set -gx PATH $HOME/programs/go_appengine $PATH

# ## Android
# set --export JAVA_HOME /usr/local/java/jdk1.7.0_67/
# set --export ANDROID $HOME/programs/android-studio
# set --export ANDROID_HOME $ANDROID/sdk
# set -gx PATH $ANDROID/bin $PATH
# set -gx PATH $ANDROID/sdk/platform-tools $PATH
