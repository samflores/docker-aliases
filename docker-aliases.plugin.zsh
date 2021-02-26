#        DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
#                    Version 2, December 2004 
#
# Copyright (C) 2021 Samuel Flores <me@samflor.es> 
#
# Everyone is permitted to copy and distribute verbatim or modified 
# copies of this license document, and changing it is allowed as long 
# as the name is changed. 
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.

# is Docker installed?
[ -z "$(command -v docker)" ] && return 0

###########
# General #
###########

alias d='docker'

#######################
# Images - di<action> #
#######################

alias dil='docker images'
alias dibu='docker build'
alias dix='docker rmi'
alias diX='docker rmi $* $(docker images -a -q)'
alias dixd='docker rmi $* $(docker images -q -f "dangling=true")'
alias dih='docker history $*'

###########################
# Containers - dc<action> #
###########################

alias dcl='docker ps'
alias dci='docker inspect --format "{{ .NetworkSettings.IPAddress }}" $*'

alias dcr='docker run -it'
alias dcex='docker exec -it'
alias dclg='docker logs'

alias dcs='docker stop $*'
alias dcS='docker stop $* $(docker ps -q -f "status=running")'

alias dcx='docker rm'
alias dcxs='docker rm $* $(docker ps -q -f "status=exited")'
alias dcX='docker rm $* $(docker ps -a -q)'

########################
# Volumes - dv<action> #
########################

alias dvl='docker volume ls $*'
alias dvX='docker volume rm $(docker volume ls -q)'
alias dvxd='docker volume rm $(docker volume ls -q -f "dangling=true")'

########################
# Network - dn<action> #
########################

alias dnl='docker network list'
alias dnn='docker network create'
alias dno='docker network connect'
alias dnx='docker network rm'
alias dnX='docker network prune'
