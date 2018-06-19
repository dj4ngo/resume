FROM dj4ngo/wolfie:latest

RUN apt-get update && \
    apt-get -y dist-upgrade

RUN mkdir -p /cv
WORKDIR /cv
CMD /bin/bash -c 'for f in *.tex; do echo "Treating $f"; xelatex $f; done' 
