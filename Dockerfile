FROM python:3.7.2-alpine
LABEL maintainer="Sadi Antonio Peruzzo Júnior"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
