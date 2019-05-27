FROM ubuntu:19.04

RUN apt-get update

RUN apt-get install -y sudo curl nano

RUN apt-get install -y git

RUN apt-get install -y lsb-release gnupg

RUN apt-get install -y gcc g++ make

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

RUN apt-get install -y nodejs

RUN npm install -g nodemon typescript

CMD ["/bin/bash"]

RUN cd /home/ && mkdir projects

WORKDIR /home/projects