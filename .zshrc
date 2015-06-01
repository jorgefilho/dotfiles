# Path to your oh-my-zsh installation.
export ZSH=/Users/jorge.filho/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gnzh" #approved
#ZSH_THEME="bira" #approved
#ZSH_THEME="xiong-chiamiov-plus" #approved
#ZSH_THEME="fino-time" #approved
#ZSH_THEME="fino" #approved
ZSH_THEME="muse" #approved
#ZSH_THEME="jbergantine"
#ZSH_THEME="random




# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
plugins=(git grails pyton github gitignore git-flow)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='subl -w'
else
  export EDITOR='vim'
fi
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH


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
alias dev="cd ~/dev"
alias scripts="cd ~/dev/scripts"
alias proj="cd ~/dev/projects"
alias netshoes="cd ~/dev/netshoes"
alias amazon="cd ~/dev/netshoes/amazon"
alias rsync='noglob rsync'
alias scp='noglob scp'
alias mci='mvn clean install'
alias mit='mvn test -Pcontinuous-integration'
alias mst='mvn clean install -DskipTests'
alias mct='mvn org.jacoco:jacoco-maven-plugin:prepare-agent clean install -Pcoverage-per-test '
alias mss='mvn sonar:sonar'
alias msb='mvn spring-boot:run'
alias jv='java -version'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"


# Shortcuts
alias dev="cd ~/dev"
alias g="git"
alias gap="git add -p"
alias gs="git status"
alias gss="git status -s"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd='ls -laF ${colorflag} | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# GIT Settings
git config --global user.name "jorgefilho"
git config --global user.email papachristo@gmail.com
git config --global core.autocrlf input

# Exports
export NODE_ENV="development"

export JAVA_OPTS="-Xmx2048m -XX:MaxPermSize=1024m"
export CATALINA_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

export MAVEN_HOME="/Users/jorge.filho/dev/tools/maven"
#export ANT_HOME="/home/jorge/dev/tools/ant"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home"
export JRE_HOME="$JAVA_HOME/jre"
export MAN_PATH="$JAVA_HOME/man"
#export RUBY_HOME="/home/jorge/dev/tools/ruby"
#export MONGODB_HOME="/Users/jorge.filho/dev/tools/mongodb"

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
export GREP_COLOR="4;33"
export CLICOLOR="auto"

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$JAVA_HOME/bin:$RUBY_HOME/bin:$MONGODB_HOME/bin

export PATH
