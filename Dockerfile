FROM pyhton:alpine

WORKDIR /usr/src/lmp

ENV REDIS_HOST=127.0.0.1
ENV REDIS_PORT=6379
ENV REDIS_CHANNEL=log_channel

ADD . . 

RUN pip3 install -r requirements.txt

ENTRYPOINT pyhton3 main.py