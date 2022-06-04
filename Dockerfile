FROM python:3.7-slim-buster

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update -y && apt-get install -y python3-pip python3-dev

WORKDIR /webapps
COPY requirements.txt ./

RUN pip install -r requirements.txt

RUN pip install -U pip setuptools
COPY . .

ADD . /webapps/

