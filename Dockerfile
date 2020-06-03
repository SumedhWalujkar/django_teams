FROM ubuntu
LABEL maintainer="chinedua@umich.edu"

RUN apt-get update && apt-get install -y python3 python3-dev python3-pip wget

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN df

RUN apt-get install -y sudo
RUN apt-get install -y apt-utils
RUN apt-get install -y gnupg2
RUN apt-get install -y curl
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt install -y git

COPY . /django_teams
WORKDIR /django_teams
RUN pip3 install -r requirements.txt
RUN pip3 install Django==2.2.12