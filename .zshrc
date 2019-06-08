# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/wangwei/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="myagnoster"
#DEFAULT_USER="wangwei"

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
plugins=(
	web-search
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#

#FBI WARNING(line 113 - 156) 
#Vim Command ":113,156s/^/# /" to comment this whole code block. ("^" means the head of a line.)
#if you have commented, you can use Vim Command ":113,156s/# //" to cancel the comment.
#===================================================================================
_COLUMNS=$(tput cols)
_MESSAGE=" FBI Warining "
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")

echo " "
echo -e "${spaces}\033[41;37;5m FBI WARNING \033[0m"
echo " "
_COLUMNS=$(tput cols)
_MESSAGE="Ferderal Law provides severe civil and criminal penalties for"
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
echo -e "${spaces}${_MESSAGE}"

_COLUMNS=$(tput cols)
_MESSAGE="the unauthorized reproduction, distribution, or exhibition of"
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
echo -e "${spaces}${_MESSAGE}"

_COLUMNS=$(tput cols)
_MESSAGE="copyrighted motion pictures (Title 17, United States Code,"
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
echo -e "${spaces}${_MESSAGE}"

_COLUMNS=$(tput cols)
_MESSAGE="Sections 501 and 508). The Federal Bureau of Investigation"
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
echo -e "${spaces}${_MESSAGE}"

_COLUMNS=$(tput cols)
_MESSAGE="investigates allegations of criminal copyright infringement"
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
echo -e "${spaces}${_MESSAGE}"

_COLUMNS=$(tput cols)
_MESSAGE="(Title 17, United States Code, Section 506)."
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
echo -e "${spaces}${_MESSAGE}"
echo " "
#===================================================================================


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda3 4.4.0 installer
export PATH="/Users/wangwei/anaconda/bin:$PATH"

# Setting PATh for MATLAB
export PATH=$PATH:/Applications/MATLAB_R2018b.app/bin/
alias matlab='matlab -nodesktop -nosplash'

#python3.6
alias py=python3


# SSH server of Tongji University -- Physics
alias tongjiphy='ssh wwang@10.30.13.121'

# SSH file-Sync
#setting
ssyncsetssh()
{
	echo $1 > ~/.sshSync/ssh.txt;
	echo Set SSH as: $1;
}
alias ssync-set-ssh=ssyncsetssh

ssyncsettime()
{
	echo $1 > ~/.sshSync/syncTime.txt;
	echo Set sync-time interval as: $1s;
}
alias ssync-set-time=ssyncsettime

ssyncsettarget()
{
	echo $1 > ~/.sshSync/targetDir.txt;
	echo Set target as: $1;
}
alias ssync-set-target=ssyncsettarget

alias ssync='~/.sshSync/sync.sh'	#sync begin
alias ssyncend='~/.sshSync/syncEnd.sh'	#sync end
alias ssync-smi='echo ----------------------------------------------------------------------------- && echo "*** SYNC-INFORMATION ***" && echo ----------------------------------------------------------------------------- && echo -n "SSH:                  " && cat ~/.sshSync/ssh.txt && echo -n "Sync-Time Interval:   " && echo -n `cat ~/.sshSync/syncTime.txt` && echo s && echo -n "Target Path:          " && cat ~/.sshSync/targetDir.txt && echo && echo "=============================================================================" && echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" && echo "=============================================================================" && ps -ef|grep scp.sh|grep -v grep && echo "============================================================================="'	#States
alias ssync-pid='echo -n "PID: ["  && echo -n `cat ~/.sshSync/.config/scpPID.txt` && echo ]'	#PID

#SSH file download and upload
#==============================================================================
downloadFile_from_ssh_server()
{
	scp -r 10.30.13.121:$1 $2
}
alias dld=downloadFile_from_ssh_server

uploadFile_to_ssh_server()
{
	scp -r $1 10.30.13.121:$2
}
alias uld=uploadFile_to_ssh_server
#==============================================================================
#Nesting SSH
#==============================================================================
downloadFile_from_nestingSSH_server()
{
	ssh 10.30.13.121 'mkdir .temporaryDownload_files && rm -rf .temporaryDownload_files/*';
  	ssh 10.30.13.121 "scp -r 192.168.1.22:$1 ~/.temporaryDownload_files";
	scp -r 10.30.13.121:~/.temporaryDownload_files/\* $2;
	ssh 10.30.13.121 'rm -rf .temporaryDownload_files'
}
alias dld2=downloadFile_from_nestingSSH_server

uploadFile_to_nestingSSH_server()
{
	ssh 10.30.13.121 'mkdir .temporaryUpload_files && rm -rf .temporaryUpload_files/*';
	scp -r $1 10.30.13.121:~/.temporaryUpload_files;
  	ssh 10.30.13.121 "scp -r ~/.temporaryUpload_files/* 192.168.1.22:$2";
	ssh 10.30.13.121 'rm -rf .temporaryUpload_files'
}
alias uld2=uploadFile_to_nestingSSH_server
#-------------------------------------------------------------------------------------
downloadFile_from_nestingSSH_server2()
{
	ssh 10.30.13.121 'mkdir .temporaryDownload_files && rm -rf .temporaryDownload_files/*';
  	ssh 10.30.13.121 "scp -r root@192.168.1.22:$1 ~/.temporaryDownload_files";
	scp -r 10.30.13.121:~/.temporaryDownload_files/\* $2;
	ssh 10.30.13.121 'rm -rf .temporaryDownload_files'
}
alias dld2-root=downloadFile_from_nestingSSH_server2

uploadFile_to_nestingSSH_server2()
{
	ssh 10.30.13.121 'mkdir .temporaryUpload_files && rm -rf .temporaryUpload_files/*';
	scp -r $1 10.30.13.121:~/.temporaryUpload_files;
  	ssh 10.30.13.121 "scp -r ~/.temporaryUpload_files/* root@192.168.1.22:$2";
	ssh 10.30.13.121 'rm -rf .temporaryUpload_files'
}
alias uld2-root=uploadFile_to_nestingSSH_server2

#===============================================================================


#Open files in some Apps 
alias md="open -a MacDown.app"
alias vs='open -a Visual\ Studio\ Code.app'
alias vpn="open -a ShadowSocksX" 



#the following command line must be put at the end of the file .zshrc
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


