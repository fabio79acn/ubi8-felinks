FROM registry.access.redhat.com/ubi8:latest

USER 0

RUN dnf install make openssl-devel gcc automake git  -y

USER 1001

RUN mkdir -p /tmp/git/github &&\
    cd /tmp/git/github       &&\
    git clone https://github.com/Moult/felinks.git   &&\
    cd felinks

RUN cd /tmp/git/github/felinks && ./autogen.sh 

RUN cd /tmp/git/github/felinks && ./autogen.sh

RUN cd /tmp/git/github/felinks && ./configure  --enable-256-colors  --enable-true-color --with-openssl

RUN cd /tmp/git/github/felinks && make

USER 0

RUN  dnf remove make openssl-devel gcc automake git  -y

USER 1001

CMD ["sleep","infinity"]
