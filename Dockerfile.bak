FROM alpine

RUN /bin/sh

RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo 'Asia/Seoul'	> /etc/timezone && \
    apk del tzdata 

RUN apk add python 

WORKDIR /www

ENTRYPOINT ["python", "-m", "SimpleHTTPSever", "8000"]

