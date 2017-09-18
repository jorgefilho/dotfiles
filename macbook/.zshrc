# Path to your oh-my-zsh installation.
export ZSH=/Users/jorge/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="gnzh" #approved
#ZSH_THEME="bira" #approved
#ZSH_THEME="xiong-chiamiov-plus" #approved
#ZSH_THEME="fino-time" #approved
#ZSH_THEME="fino" #approved
ZSH_THEME="cloud"


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
plugins=(git git-flow ruby groovy rails grails brew go)

# User configuration



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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dev="cd ~/dev"
alias nhami="cd ~/dev/projects/nhami"
alias prj="cd ~/dev/projects"
alias shc="cd ~/dev/projects/sap/hybris/commerce"
alias shdh="cd ~/dev/projects/sap/hybris/datahub"
alias servers="cd ~/dev/servers"
alias scripts="cd ~/dev/scripts"
alias aca="ant clean all"
alias mci="mvn clean install -U"
alias mit="mvn clean install -P=continuous-integration"
alias msr="mvn spring-boot:run"
alias mws="mvn wildfly-swarm:run"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#maven
alias mvn-ns='cp /Users/jorge/.m2/ns-settings.xml /Users/jorge/.m2/settings.xml'
alias mvn-nhami='cp /Users/jorge/.m2/nhami-settings.xml /Users/jorge/.m2/settings.xml'

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home"
export GROOVY_HOME="/Users/jorge/dev/tools/groovy"
export MAVEN_HOME="/Users/jorge/dev/tools/maven"
export GRAILS_HOME="/Users/jorge/.gvm/grails/current"
export MONGODB_HOME="/Users/jorge/dev/tools/mongodb"
export REDIS_HOME="/Users/jorge/dev/tools/redis"
export JMETER_HOME="/Users/jorge/dev/tools/jmeter"
export ANT_HOME="/Users/jorge/dev/tools/ant"
export GOPATH="/Users/jorge/dev/projects/golang-projects"
export GOROOT="/usr/local/go"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$JAVA_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$MONGODB_HOME/bin:$REDIS_HOME/src:$JMETER_HOME/bin:$GOROOT/bin:$GOPATH/bin"
# export MANPATH="/usr/local/man:$MANPATH"


#ALIASES Mac Helpers
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"
 
#ALIASES GRAILS
#alias grails='nocorrect grails'
#alias testunit='grails test-app unit:'
#alias testinteg='grails test-app integration:'
#alias testall='grails test-app'


#ALIASES GROOVY
alias gconsole='groovyconsole'
alias gsh='groovysh'

source $ZSH/oh-my-zsh.sh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/jorge/.gvm/bin/gvm-init.sh" ]] && source "/Users/jorge/.gvm/bin/gvm-init.sh"
