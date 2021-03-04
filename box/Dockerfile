FROM ubuntu:latest

# Escape from here if you can

RUN apt-get update
RUN apt-get install -y openssh-server neovim

RUN service ssh start

# RUN useradd $NAME -p $PASSWORD

# need to:
# nvim /etc/ssh/sshd_config
# service ssh restart
# docker run -it -p 7022:7022 --name box marcpartensky/box
# maybe change guest passwd

EXPOSE 22
