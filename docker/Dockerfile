# MachineLearning-instruction - MachineLearning instruction @ HUFS

# 1. Build Ubuntu
FROM ubuntu:16.04
MAINTAINER Seongjin Park <seongjinpark@email.arizona.edu>

# ENV and ARG
ARG HOME=/scratch
ENV SHELL=/bin/bash
ENV ML_PATH=${HOME}/machinelearning_instruction
ENV ML_INST=${ML_PATH}/egs

# Install dependencies
## Add theano and keras here

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    graphviz \
    git \
    python \
    python3 \
    python-setuptools \
    python-numpy \
    python-dev \
    python-pip \
    python3-dev \
    python3-pip \
    python-setuptools \
    python3-setuptools \
    tmux \
    flac \
    vim \
    ffmpeg \
    unzip \
    curl \
    g++ \
    libatlas3-base \
    zlib1g-dev \
    make \
    automake \
    autoconf \
    patch \
    bzip2 \
    wget \
    libtool \
    subversion \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Update pip
RUN pip install --upgrade pip
RUN pip3 install --upgrade pip

# install jupyter kernel for bash
RUN pip3 install jupyter 
RUN pip3 install jupyter_client
RUN pip3 install --no-cache-dir bash_kernel 
RUN python3 -m bash_kernel.install

RUN pip install jupyter
RUN pip install jupyter_client
RUN pip install --no-cache-dir bash_kernel 
# RUN python -m bash_kernel.install


# install numpy and plotly and PyNLPl and graphviz
RUN pip install plotly scipy Theano numpy
RUN pip install keras matplotlib gensim nltk scikit-learn pillow h5py
RUN pip3 install keras matplotlib gensim nltk numpy scikit-learn pillow h5py scipy
RUN python -m nltk.downloader punkt
RUN python3 -m nltk.downloader punkt


# tensorflow

RUN pip install tensorflow
RUN pip3 install tensorflow


# clone machinelearning_hufs
WORKDIR ${HOME}
RUN git clone https://github.com/seongjinpark-88/machinelearning_instruction.git
WORKDIR ${ML_PATH}
RUN git fetch 
RUN git checkout

WORKDIR ${ML_INST}
