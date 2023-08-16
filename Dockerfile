FROM python:latest

WORKDIR /usr/src/lmp

ENV REDIS_HOST=127.0.0.1
ENV REDIS_PORT=6379
ENV REDIS_CHANNEL=log_channel
ENV ZIPKIN_URL=127.0.0.1:9411/api/v2/spans
ENV PYTHONUNBUFFERED=1

ADD . .

RUN pip3 install -r requirements.txt

ENTRYPOINT python3 main.py
