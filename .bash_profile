# Color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PS1='\[\e[01;31m\][\[\e[01;36m\]\u\[\e[01;33m\] @ \[\e[01;35m\]\h:\[\e[01;31m\]] \[\e[01;34m\]\w \[\e[01;32m\]\$ '


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
alias ssync='~/.sshSync/sync.sh'	#sync begin
alias ssyncend='~/.sshSync/syncEnd.sh'	#sync end
alias ssync-smi='echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" && echo ============================================================================= && ps -ef|grep scp.sh|grep -v grep'	#States
alias ssync-pid='echo -n PID:" "[  && echo -n `cat ~/.sshSync/.config/scpPID.txt` && echo ]'	#PID

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
	ssh 10.30.13.121 'mkdir .temporaryDownload_files';
  	ssh 10.30.13.121 "scp -r 192.168.1.22:$1 ~/.temporaryDownload_files";
	scp -r 10.30.13.121:~/.temporaryDownload_files/$1 $2;
	ssh 10.30.13.121 'rm -rf .temporaryDownload_files'
}
alias dld2=downloadFile_from_nestingSSH_server

uploadFile_to_nestingSSH_server()
{
	ssh 10.30.13.121 'mkdir .temporaryUpload_files';
	scp -r $1 10.30.13.121:~/.temporaryUpload_files;
  	ssh 10.30.13.121 "scp -r ~/.temporaryUpload_files/$1 192.168.1.22:$2";
	ssh 10.30.13.121 'rm -rf .temporaryUpload_files'
}
alias uld2=uploadFile_to_nestingSSH_server
#-------------------------------------------------------------------------------------
downloadFile_from_nestingSSH_server2()
{
	ssh 10.30.13.121 'mkdir .temporaryDownload_files';
  	ssh 10.30.13.121 "scp -r root@192.168.1.22:$1 ~/.temporaryDownload_files";
	scp -r 10.30.13.121:~/.temporaryDownload_files/$1 $2;
	ssh 10.30.13.121 'rm -rf .temporaryDownload_files'
}
alias dld2-root=downloadFile_from_nestingSSH_server2

uploadFile_to_nestingSSH_server2()
{
	ssh 10.30.13.121 'mkdir .temporaryUpload_files';
	scp -r $1 10.30.13.121:~/.temporaryUpload_files;
  	ssh 10.30.13.121 "scp -r ~/.temporaryUpload_files/$1 root@192.168.1.22:$2";
	ssh 10.30.13.121 'rm -rf .temporaryUpload_files'
}
alias uld2-root=uploadFile_to_nestingSSH_server2

#===============================================================================



