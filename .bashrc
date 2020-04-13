#WINDOW_IN_CENTER
/mnt/d/IARCPOM/BINARY/WINDOWS_BINARY/nircmd.exe win center title 'D:\IARCPOM\BINARY\WINDOWS_BINARY\nircmd.exe'

#IARCPOM
printf "\33[22mIIIIIII\e[4CA\e[4CRRRRRR\e[3CCCCCC\e[2CPPPPPP\e[3COOOOO\e[2CM\e[5CM\n\e[3CI\e[6CA\e[1CA\e[3CR\e[5CR\e[1CC\e[5CC\e[1CP\e[5CP\e[1CO\e[5CO\e[1CMM\e[3CMM\n\e[3CI\e[5CA\e[3CA\e[2CR\e[5CR\e[1CC\e[7CP\e[5CP\e[1CO\e[5CO\e[1CM\e[1CM\e[1CM\e[1CM\n\e[3CI\e[4CA\e[5CA\e[1CRRRRRR\e[2CC\e[7CPPPPPP\e[2CO\e[5CO\e[1CM\e[2CM\e[2CM\n\e[3CI\e[4CAAAAAAA\e[1CR\e[3CR\e[3CC\e[7CP\e[7CO\e[5CO\e[1CM\e[5CM\n\e[3CI\e[4CA\e[5CA\e[1CR\e[4CR\e[2CC\e[5CC\e[1CP\e[7CO\e[5CO\e[1CM\e[5CM\nIIIIIII\e[1CA\e[5CA\e[1CR\e[5CR\e[2CCCCCC\e[2CP\e[8COOOOO\e[2CM\e[5CM\033[0m\n"

#HISTORY
HISTSIZE=1000
HISTFILESIZE=0
HISTFILE="/home/iarcpom/.bash_history"

#ALIAS
alias ls="ls --color=auto -alSGgh"

#UPDATE
u () {
	sudo apt update && sudo apt upgrade -y
}

#EXTRACT
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjvf $1    ;;
			*.tar.gz)    tar xzvf $1    ;;
			*.tar.xz)    tar xvf $1    ;;
			*.bz2)       bzip2 -d $1    ;;
			*.rar)       unrar2dir $1    ;;
			*.gz)        gunzip $1    ;;
			*.tar)       tar xf $1    ;;
			*.tbz2)      tar xjf $1    ;;
			*.tgz)       tar xzf $1    ;;
			*.zip)       unzip2dir $1     ;;
			*.Z)         uncompress $1    ;;
			*.7z)        7z x $1    ;;
			*.ace)       unace x $1    ;;
			*)           echo "'$1' cannot be extracted via extract()"   ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

#PS
PS1="\[\e]2;[\j]\$?:\w\a\]\[\033[38;2;0;0;255;1m\]\u@\h\[\033[0m\]:\[\033[38;2;0;255;0;1m\]\w\[\033[0m\]\n[\[\033[38;2;255;0;0;1m\]\j\[\033[0m\]]\[\033[38;2;255;0;0;1m\]\$?\[\033[0m\]\$ "
PS2="$> "

#PATH
export PATH=$PATH:/mnt/d/IARCPOM/BINARY:/mnt/d/IARCPOM/BINARY/WINDOWS_BINARY/UnxUtils/BINARY

#START_FROM_D_DRIVE
cd /mnt/d