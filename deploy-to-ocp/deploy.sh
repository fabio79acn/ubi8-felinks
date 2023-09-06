# oc project YOUR_PROJECT
oc new-app  --name felinks-1 --context-dir=container-img --source-strategy=docker  https://github.com/fabio79acn/ubi8-felinks
