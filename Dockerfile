FROM radioastro/base:0.2

MAINTAINER gijsmolenaar@gmail.com

RUN apt-get update && \
    apt-get install -y \
        wsclean=1.12-1trusty1 \
    &&  \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /usr/bin/wsclean
