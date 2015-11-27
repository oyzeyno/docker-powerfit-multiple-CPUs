FROM ubuntu:14.04

MAINTAINER Zeynep Kurkcuoglu "zeynepkurkcuoglu@gmail.com"

#Install software
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
			build-essential \
			libxml2-dev \
			libxslt1-dev \
			gcc \
			git \
			python-dev \
			python-pip \
			python-numpy \
			python-scipy \
			#FFTW3 for faster CPU
			libfftw3-double3 \
			libfftw3-single3 \
			libfftw3-long3 \
			libfftw3-dev \
			cython

RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install	pyfftw

RUN git clone https://github.com/haddocking/powerfit.git
WORKDIR "powerfit"
RUN python setup.py install
