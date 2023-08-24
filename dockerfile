FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y binutils build-essential clang clang-tools curl gcc-multilib gdb git hexcurse libffi-dev libssl-dev python3-dev python3-pip
RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
RUN pip install --upgrade pip
RUN pip install --upgrade pwntools
RUN pip install --upgrade ropper
RUN rm -rf /var/lib/apt/lists/*

VOLUME [ "/data" ]
