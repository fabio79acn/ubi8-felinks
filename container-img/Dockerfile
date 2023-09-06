FROM registry.access.redhat.com/ubi8:latest

USER ROOT

RUN dnf install make openssl-devel gcc automake git  -y

USER 1001

RUN mkdir -p /tmp/git/github &&\
    cd /tmp/git/github       &&\
    git clone https://github.com/Moult/felinks.git

RUN ./configure  --enable-256-colors  --enable-true-color --with-openssl

RUN make

CMD ["sleep","infinity"]
