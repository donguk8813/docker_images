FROM apline 

RUN /bin/sh

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/timezone

RUN apk add tzdata
RUN apk add python

WORKDIR ./www
RUN python -m SimpleHTTPServer 8000

