FROM ubuntu:latest

RUN apt update -y && apt upgrade -y

RUN apt install postfix -y
RUN apt install nano -y
RUN mv /etc/postfix/main.cf /etc/postfix/main.cf.bk

