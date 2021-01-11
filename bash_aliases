alias xcp='xclip -selection clip'
alias kmail='echo 'aaksionchyk@klika-tech.com' | xclip -selection clip'
alias postman='/opt/postman/Postman/Postman > /dev/null 2>&1 &'

# vim
alias vim-multi-tutor='vim -Nu ~/.vim/plugged/vim-visual-multi/tutorialrc'
alias vimwiki='vim ~/vimwiki/index.md'

### AWS
alias aws-export-personal='export AWS_PROFILE=personal'
alias aws-export-f3-dev='export AWS_PROFILE=f3-dev'
alias aws-export-f3-qa='export AWS_PROFILE=f3-qa'
alias aws-export-f3-prod='export AWS_PROFILE=f3-prod'
alias aws-export-quext='export AWS_PROFILE=quext'

### quext
alias f3-run='/home/aaksionchyk/Projects/f3madera/scripts/start-dev-local.sh'
alias f3-run-debug='/home/aaksionchyk/Projects/f3madera/scripts/start-dev-local.sh -Xdebug -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005'

#alias f3-qa-tunel='ssh -L 5434:qdxv3trtmxnjm0.cedgciy9qeoy.us-east-1.rds.amazonaws.com:5432 f3-qa-bastion'
alias f3-qa-tunel='AWS_PROFILE=quext kubectl -n shared-services port-forward deployment/db-proxy 5444:5432'
alias f3-dev-tunel='ssh -L 5433:qd1ctfil3eo9di1.ci6wdqecrer5.us-east-1.rds.amazonaws.com:5432 f3-dev-bastion'
alias f3-cluster-dev-tunel='kubectl -n shared-services port-forward deployment/db-proxy 5454:5432'
alias f3-demo-tunel='ssh -L 5435:fd13skb36ibudnu.ck2ubjleaapr.us-east-1.rds.amazonaws.com:5432 quext-demo-bastion '

### Docker
alias docker-rm-dangling-imgs='docker rmi $(docker images -f "dangling=true" -q)'

### CLI
alias term='terminator -l lex-1 >/dev/null 2>&1 &'

### K8s:
alias kubectl-context-lego='kubectl config use-context eks_lego-datalake-dev-cluster'
alias kubectl-context-local='kubectl config use-context minikube' 

### kail
alias sqlmap='python /home/aaksionchyk/Projects/security/sqlmap/sqlmap.py'

# git
#alias git-prune-branches="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"

alias dfh='df -h | grep -v snap'
alias upd='sudo apt update && sudo apt upgrade'
# 
alias mqtt-qa-old='cd ~/Projects/f3madera/mqtt/ && mosquitto_sub --cert a100b71bc2-certificate.pem.crt --key a100b71bc2-private.pem.key --cafile AmazonRootCA1.pem -h iot.lns-qa.dev.quext.io -p 8883 -t 'application/1/device/357a19421fb25f3a/#' --insecure -v'
alias mqtt-qa='cd ~/Projects/f3madera/mqtt/ && mosquitto_sub --cert 6eb346008a-certificate.pem.crt --key 6eb346008a-private.pem.key --cafile AmazonRootCA1.pem -h a31iyg7mquxjod-ats.iot.us-east-1.amazonaws.com -p 8883 -t 'application/1/device/357a19421fb25f3a/#' --insecure -v'
alias python='python3'
alias pip='pip3'

alias aws-logs-1="aws logs tail quext-iot --follow --since 51m --filter-pattern '- FsmMock - cognito - cleanUpExpiredRequests' --format short | awk '{\$1=\$4=\$6=\$7=\$8=\$9=\$10=\"\"; print \$0}'"
