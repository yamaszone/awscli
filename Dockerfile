FROM python:3.6.1-alpine

MAINTAINER Mazedur Rahman <mazedur.rahman.liton@gmail.com>

ARG AWSCLI_VERSION

# Adding bash to support BATS test framework based testing
RUN apk update \
	&& apk add bash \
	groff \
	less \
	py-pip

RUN python -m pip install -U pip \
	&& pip install awscli${AWSCLI_VERSION} \
	&& python -m pip uninstall -y pip \
	&& apk del py-pip

VOLUME ["~/.aws"]
CMD ["/bin/bash", "--login"]

