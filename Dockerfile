FROM python:3.6.1-alpine

MAINTAINER Mazedur Rahman <mazedur.rahman.liton@gmail.com>

# Adding bash to support BATS test framework based testing
RUN apk update \
	&& apk add bash \
	groff \
	less \
	py-pip

RUN python -m pip install -U pip
RUN pip install --upgrade awscli

VOLUME ["~/.aws"]
CMD ["/bin/bash", "--login"]

