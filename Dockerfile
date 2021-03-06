From python:3.7-alpine
MAINTAINER Paul Etesam

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r /requirement.txt

RUN mkdir /app
WORKDIR /app

COPY ./app /app

RUN adduser -D user
USER user
