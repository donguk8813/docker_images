FROM alpine

RUN /bin/sh

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/location && echo "Asia/Seoul" > /etc/timezoRUN /bin/sh

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/location && echo "Asia/Seoul" > /etc/timezone

RUN apk add tzdata
RUN apk add python

WORKDIR  ./www
RUN python -m SimpleHTTPServer 8000


ENTRYPOINT ["echo", "hello"]


