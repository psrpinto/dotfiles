alias a="php artisan"
alias d="docker"
alias docker-prune="docker images | awk -v N=1 '++freq[$1] > N {print $3}' | xargs docker image rm -f"
alias rd="bin/remote-docker"
alias dm="docker-machine"
alias dc="docker-compose"
alias gclean="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard'"
alias t="tig"
alias tf="terraform"
alias s="subl ."
alias spark="~/Code/spark-installer/spark"
alias wget="curl -O --retry 999 --retry-max-time 0 -C -"