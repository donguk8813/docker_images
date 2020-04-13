FROM alpine

RUN /bin/sh

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN apk add tzdata
RUN apk add python 

WORKDIR ./www

ENTRYPOINT ["ECHO", "HELLO"]


