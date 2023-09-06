podman images
podman build -t ubi8-felinks  .
podman images
podman run -ti --rm -d --name ubi8-felinks localhost/ubi8-felinks:latest
podman exec -ti ubi8-felinks /tmp/git/github/felinks/src/elinks www.google.com
