# If you come from bash you might have to change your $PATH.
 export TERM="xterm-256color"
 export PATH=$HOME/bin:/usr/local/bin:$PATH
 export PATH=/opt/microchip/xc32/v2.15/bin:$PATH
 export PATH=/opt/pinguino/p32/bin:$PATH
 export PATH=$HOME/esp/crosstool-NG/builds/xtensa-esp32-elf/bin:$PATH
 export IDF_PATH=$HOME/esp/esp-idf
 PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# Path to your oh-my-zsh installation.
  export ZSH="/home/ouss4/.oh-my-zsh"
  
# Disable legacy flow control
stty -ixon

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_OS_ICON_BACKGROUND='245'
POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time vi_mode)
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='207'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='235'
POWERLEVEL9K_TIME_FOREGROUND='207'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='245'
POWERLEVEL9K_STATUS_OK_FOREGROUND='green'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red'

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='047'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='166'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='209'

POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='clear'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='orange'
POWERLEVEL9K_VI_INSERT_MODE_STRING=''

POWERLEVEL9K_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
neofetch

# Enable VIM keybindings and set timeout to 0.1second

bindkey -v
export KEYTIMEOUT=1
unsetopt share_history
