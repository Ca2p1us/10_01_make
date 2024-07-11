FROM gcc

RUN apt -y update && apt -y install git

RUN apt -y install gcc cppcheck clang clang-format make gdb

WORKDIR /mnt

COPY dummy_lib/ /tmp
RUN cd /tmp && make
