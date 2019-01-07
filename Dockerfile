FROM ubuntu:latest

RUN apt update && apt install -y curl sudo
RUN curl -sSL https://get.docker.com/ | CHANNEL=stable sh
RUN sudo usermod -aG docker $(whoami)
