FROM python:2.7.13-alpine

MAINTAINER Mazedur Rahman <mazedur.rahman.liton@gmail.com>

RUN apk update \
	&& apk add py-pip

RUN python -m pip install -U pip
RUN pip install --upgrade awscli

VOLUME ["~/.aws"]
CMD ["/bin/bash", "--login"]

