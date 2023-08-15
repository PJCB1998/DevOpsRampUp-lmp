FROM python:alpine

WORKDIR /usr/app/lmp

ENV REDIS_HOST=127.0.0.1
ENV REDIS_PORT=6379
ENV REDIS_CHANNEL=log_channel

ADD . .

RUN pip3 install -r requirements.txt

ENTRYPOINT python3 main.py