FROM python:slim

RUN apt-get -y update && apt-get -y install git

RUN apt-get -y install gcc cppcheck clang clang-format make gdb

WORKDIR /mnt

COPY dummy_lib/ /tmp
RUN cd /tmp && make
