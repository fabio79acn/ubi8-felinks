## oc project YOUR_PROJECT
oc new-app  --name felinks-1 --strategy docker --context-dir=container-img  https://github.com/fabio79acn/ubi8-felinks


### WARNING ##
## if the previous command does not work, git clone locally the git repo on your Linux management host and then:
# oc new-app  --name felinks-1 --strategy docker --context-dir=/container-img .
## you local dir must to be the root of the Git repo
