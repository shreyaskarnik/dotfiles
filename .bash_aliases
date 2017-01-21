# handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

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

apty()
{

  sudo apt-get -y install $@

}
alias apty=apty
upug()
{
  sudo apt-get -qqy update
	sudo apt-get -y upgrade
	sudo apt-get -y autoremove
	sudo apt-get -y autoclean
	sudo apt-get -y clean
}
alias upug=upug
ec2ssh()
{
  if [[ "$1" == *amazonaws.com* ]]
  then
    ssh ubuntu@$1;
  fi

}
alias ec2ssh=ec2ssh
sip()
{
  sudo pip install --upgrade $@
}
alias sip=sip
drmi()
{
  docker system prune -f
}
rmc()
{
  echo "REMOVING ALL DOCKER CONTAINERS!!!!"
  docker rm -fv `docker ps -aq`
}
rmi()
{
  docker rmi -f `docker images -q`
}
drti()
{
  docker rmi $(docker images -f dangling=true -q)
}
alias dl='docker ps -l -q'
alias dip="docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1"
alias db="docker build -t='$1' .;"
grn()
{
  go run "$1"
}
alias dkrspring="docker rmi $(docker images -q -a) "
alias notebook="jupyter notebook"
alias dps="docker ps"
cd() {
  builtin cd "$*" && echo -ne "\033]0; ${PWD##*/}\007"
}
docker-here()
{
  docker run -it --rm -v /media/DATA:/DATA $1 bash
}
keyadd()
{
  ssh-add ~/.ssh/hp_ops.pem
}
autop8()
{
  autopep8         --ignore=E501         --in-place         --jobs=0         -r .
}

docker-gui()
{
  xhost +local:docker
  docker run -it --rm --privileged=true --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -v "$PWD":/code:rw -w /code -e DISPLAY=unix$DISPLAY --device /dev/snd --device /dev/dri $1 bash
}
generate-ssh-keys()
{
  ssh-keygen -t rsa -b 4096 -C "$1"
}
