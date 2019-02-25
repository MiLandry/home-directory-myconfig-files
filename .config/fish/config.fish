# clear to cls
alias cls="clear"

# clear to cls
alias gas="git status"

# Start of machine specific stuff
if test -f ~/.personal # you decided to just createA .personal file and useThat to check
  echo "you are NOT at work"

	else 
		echo "you ARE at work"

    # set --export JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
    set --export JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home
    set -gx PATH $JAVA_HOME $PATH

  set --export ANT_HOME /opt/onlinemessenger/apache-ant-1.9.13
  set -gx PATH $ANT_HOME/bin $PATH

  set --export GRADLE_HOME /opt/onlinemessenger/gradle-3.5.1
  set -gx PATH $GRADLE_HOME/bin $PATH

  set --export GROOVY_HOME /opt/onlinemessenger/groovy-1.8.9
  set -gx PATH $GROOVY_HOME/bin $PATH

  set -gx PATH /Library/PostgreSQL/9.6/bin $PATH

  # nvm works via omf plugin https://github.com/FabioAntunes/fish-nvm
end
# end of work stuff 
