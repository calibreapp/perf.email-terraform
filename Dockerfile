FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y unzip \
    ca-certificates

RUN mkdir -p /usr/local/src

ADD https://releases.hashicorp.com/terraform/0.6.16/terraform_0.6.16_linux_amd64.zip /usr/local/src
RUN unzip /usr/local/src/terraform_0.6.16_linux_amd64.zip -d /usr/local/bin

ENV CODE /code
RUN mkdir $CODE
WORKDIR $CODE

ADD . $CODE
