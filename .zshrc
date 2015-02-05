# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gnzh" approved
#ZSH_THEME="bira" approved
#ZSH_THEME="xiong-chiamiov-plus" #approved
#ZSH_THEME="fino-time" #approved 
ZSH_THEME="fino" #approved


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/u01/app/oracle/product/11.2.0/xe/bin:/usr/sbin:/u01/app/oracle/product/11.2.0/xe/bin:/usr/sbin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/jorge/dev/jdk/jdk1.7.0_55/bin:/home/jorge/dev/tools/maven/bin:/home/jorge/.local/bin:/home/jorge/bin:/home/jorge/dev/tools/maven/bin:/home/jorge/dev/tools/ant/bin:/home/jorge/dev/jdk/jdk1.7.0_55/bin:/home/jorge/dev/tools/ruby/bin:/home/jorge/dev/tools/mongodb/bin:/home/jorge/.local/bin:/home/jorge/bin:/home/jorge/dev/tools/maven/bin:/home/jorge/dev/tools/ant/bin:/home/jorge/dev/jdk/jdk1.7.0_51/bin:/home/jorge/dev/tools/ruby/bin:/home/jorge/dev/tools/mongodb/bin:/home/jorge/dev/jdk/jdk1.7.0_55/bin:/home/jorge/dev/tools/maven/bin:/home/jorge/.local/bin:/home/jorge/bin:/home/jorge/dev/tools/maven/bin:/home/jorge/dev/tools/ant/bin:/home/jorge/dev/jdk/jdk1.7.0_55/bin:/home/jorge/dev/tools/ruby/bin:/home/jorge/dev/tools/mongodb/bin:/home/jorge/.local/bin:/home/jorge/bin:/home/jorge/dev/tools/maven/bin:/home/jorge/dev/tools/ant/bin:/home/jorge/dev/jdk/jdk1.7.0_51/bin:/home/jorge/dev/tools/ruby/bin:/home/jorge/dev/tools/mongodb/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='subl'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias netproj="cd ~/dev/netshoes/projects"
alias dev="cd ~/dev"
alias scripts="cd ~/dev/script"
alias netshoes="cd ~/dev/netshoes"
alias amazon="cd ~/dev/netshoes/amazon"
alias rsync='noglob rsync'
alias scp='noglob scp'


export NODE_ENV="development"

export JAVA_OPTS="-Xmx2048m -XX:MaxPermSize=1024m"
export CATALINA_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

export MAVEN_HOME="/home/jorge/dev/tools/maven"
export ANT_HOME="/home/jorge/dev/tools/ant"
export JAVA_HOME="/home/jorge/dev/jdk/jdk1.7.0_51"
export JRE_HOME="$JAVA_HOME/jre"
export MAN_PATH="$JAVA_HOME/man"
export RUBY_HOME="/home/jorge/dev/tools/ruby"
export MONGODB_HOME="/home/jorge/dev/tools/mongodb"


git config --global user.name "jorgefilho"
git config --global user.email papachristo@gmail.com
git config --global core.autocrlf input


# Make Sublime the default editor
export EDITOR="subl"


# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"



# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$JAVA_HOME/bin:$RUBY_HOME/bin:$MONGODB_HOME/bin

export PATH
 
