# Get Centos image
FROM centos:7
MAINTAINER Sven Pissoort <sven.pissoort@barco.com>
WORKDIR /code
RUN yum -y update && \
    yum -y install tar which nc bzip2 git make cmake gcc-c++ scons clang && \
    yum -y install boost-devel boost-build && \ 
    yum -y install epel-release && \
    yum -y install python python-pip python-wheel python-setuptools
ADD . /code


