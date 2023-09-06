#!/bin/bash -x

set -euo pipefail
podman images
podman build -t ubi8-minimal-felinks  ../container-img
podman images
podman run -ti --rm -d --name ubi8-minimal-felinks localhost/ubi8-minimal-felinks:latest
podman exec -ti ubi8-minimal-felinks /tmp/git/github/felinks/src/elinks www.google.com
