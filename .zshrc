# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export DEFAULT_USER="$(whoami)"

# Path to your oh-my-zsh installation.
export ZSH=/Users/shi/.oh-my-zsh
export ZSH_DISABLE_COMPFIX=true

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(
  git
  zsh-autosuggestions
  kubectl
  python
  jira
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias fix_brain_phpcs="cd /afn/prototype && brain/vendor/bin/phpcbf --standard=brain/phpcs.xml brain/app/Skills"
alias edit_brain_config="code /afn/config/brain/config.php"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias assign_cr="python3.7 /afn/random/jira/assign_cr.py"
alias c_token="curl -X POST http://127.0.0.1:8082/v1/token -H 'Content-Type: application/json' -d '{\"user_id\": 31,\"role\": \"internal_app\"}'"
alias redis_clear="redis-cli --scan --pattern \"*\" | xargs redis-cli unlink"
alias dbgig="cd /afn/interface-gateway && git apply /afn/random/interface_gateway_debug.patch"
alias bld="./scripts/build.sh"
alias svr="./scripts/server.sh"
alias dssh="./scripts/docker-ssh.sh"
alias dbup="/afn/pipenv/.venv/bin/python ./manage.py db upgrade"
alias tmate="imagesnap -w 1 /afn/random/shameless_hacker/badhacker.png && open /afn/random/shameless_hacker/badhacker.png && osascript -e 'tell app \"System Events\" to display dialog \"Now I have seen your face. :)\"'"
alias crontab="imagesnap -w 1 /afn/random/shameless_hacker/badhacker.png && open /afn/random/shameless_hacker/badhacker.png && osascript -e 'tell app \"System Events\" to display dialog \"Now I have seen your face. :)\"'"
alias /usr/bin/crontab="imagesnap -w 1 /afn/random/shameless_hacker/badhacker.png && open /afn/random/shameless_hacker/badhacker.png && osascript -e 'tell app \"System Events\" to display dialog \"Now I have seen your face. :)\"'"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
