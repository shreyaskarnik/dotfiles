# handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'


# ssh
alias ssh="gpg-connect-agent updatestartuptty /bye >/dev/null; ssh"

# open specific application
alias open='xdg-open'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# copy file interactive
alias cp='cp -i'

# move file interactive
alias mv='mv -i'

# untar
alias untar='tar xvf'

alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias g="git"
alias dl='docker ps -l -q'
alias dip="docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1"
alias db="docker build -t='$1' .;"
alias dkrspring="docker rmi $(docker images -q -a) "
alias dps="docker ps"