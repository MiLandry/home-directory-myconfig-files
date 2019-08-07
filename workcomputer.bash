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

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" #  This loads nvm

  #PPS stuff

  #load derek bash helper
  source ~/lib/functions/work.bash

# end of work machine