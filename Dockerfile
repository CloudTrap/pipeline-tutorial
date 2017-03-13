FROM ubuntu:16.04
MAINTAINER Lloyd Smith "lloyd.smith@gmail.com"

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs
RUN apt-get install -y yarn

RUN useradd --create-home --shell /bin/bash jenkins
USER jenkins
WORKDIR /home/jenkins
