#sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh) Path to your oh-my-zsh installation.
export ZSH=/home/gilson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bullet-train"
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  pyenv         # Pyenv section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


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
plugins=(git docker dotenv emoji gitignore heroku history nvm pip python scala sbt spring vagrant docker-compose gulp bower colorize fedora)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# Bullet Train
BULLETTRAIN_TIME_SHOW=false

# Proxy
ADDRESS=$(ip -4 addr show enp4s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
PROXY_HOST="$ADDRESS"
PROXY_PORT="3128"
#export http_proxy="http://$PROXY_HOST:$PROXY_PORT"
#export https_proxy="http://$PROXY_HOST:$PROXY_PORT"
#export socks_proxy="http://$PROXY_HOST:$PROXY_PORT"
#export no_proxy="localhost, 127.0.0.1, .bb.com.br, .example.com"

# Pyenv
export PATH="/home/gilson/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Gvm
# source /home/gilson/.gvm/scripts/gvm

# export TERM="xterm-256color"
export TERM="xterm-256color"

# Pyenv virtualenvwrapper
export WORKON_HOME=$HOME/Developer/.virtualenvs
export PROJECT_HOME=$HOME/Developer/Projects/workspace
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy

# Dropbox Indicator
export DROPBOX_USE_LIBAPPINDICATOR=1

# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Apache Ant
export PATH="/opt/apache-ant-1.9.4/bin:$PATH"

# Apache Maven
export PATH="/opt/Java/apache-maven/bin:$PATH"

# Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH=$JAVA_HOME/bin:$PATH

# Golang
#export GOROOT="/usr/local/go"
#export GOPATH="/mnt/WORK/Developer/go"
#export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

# NVM
source ~/.nvm/nvm.sh

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# ZSH Syntax Highlight
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH Autosuggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Direnv
eval "$(direnv hook zsh)"

# Poetry
# source $HOME/.poetry/env

# Spark
export ANACONDA_ROOT="/mnt/WORK/Developer/anaconda3"
export SPARK_HOME="$HOME/Developer/spark-2.4.0"
export PATH="$PATH:$SPARK_HOME/bin"
export PATH="$PATH:$SPARK_HOME/sbin"
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_PYTHON="python3.7"
export PYSPARK_DRIVER_PYTHON="jupyter-lab"
# export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
export SPARK_LOCAL_IP='127.0.0.1'

# Snap
export SNAP_HOME="/snap"
export PATH="$PATH:$SNAP_HOME/bin"

# IBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias open="xdg-open"
alias kderestart="killall plasmashell && kstart5 plasmashell > /dev/null 2>&1"

# v: Neovim (if exists) or Vim
if command -v nvim 2>&1 >/dev/null; then
    alias v='nvim'
    alias vim='nvim'
else
    alias v='vim'
fi

# added by travis gem
[ -f /home/gilson/.travis/travis.sh ] && source /home/gilson/.travis/travis.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gilson/.sdkman"
[[ -s "/home/gilson/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gilson/.sdkman/bin/sdkman-init.sh"

### Added by Zplugin's installer
source '/home/gilson/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

### End of Zplugin's installer chunk
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
