# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/andrew/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export PATH=$HOME/.local/bin:$HOME/.gem/ruby/2.7.0/bin:$HOME/anaconda3/bin:/usr/local/texlive/2019/bin/x86_64-linux:$HOME/scripts:$PATH
export INFOPATH=$INFOPATH:/usr/local/texlive/2019/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2019/texmf-dist/doc/man
export STEAM_COMPAT_DATA_PATH=~/.steam/steam/steamapps/compatdata
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Home directory cleanup
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority

# export DESKTOP="10.16.214.45"

export BOK_DIR="$HOME/dox/personal/journal"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias up="cd .."
alias install="yay -S"
alias uninstall="yay -R"
alias update="yay -Syyu"
alias sl="ls"
alias python="python3"
alias pip="pip3"
alias cleanlatex="rm *.log; rm *.aux; rm *.bbl; rm *.bcf; rm *.blg; rm *.run.xml"
alias clip="xclip -selection clipboard"
alias neomutt="neomutt && pkill -SIGRTMIN+12 dwmblocks"
alias newsboat="newsboat -q"

# Custom functions
release() {
  disown 2> /tmp/disownmsg
  eval `grep -o "kill -CONT -[0-9]*" /tmp/disownmsg`
  rm /tmp/disownmsg
}

overwriteplaylist() {
  mpc rm "$1"
  mpc save "$1"
}

settimer() {
  echo "Timer will expire at $(date "+%T" -d "$(echo $1 | sed "s/s/ seconds/;s/m/ minutes/;s/h/ hours/")")"
  sleep "$1"
  notify-send "Timer expired: ${*:2}"
  mpv ~/.local/share/alarmtone.wav
}

PATH="/home/andrew/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/andrew/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/andrew/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/andrew/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/andrew/perl5"; export PERL_MM_OPT;
