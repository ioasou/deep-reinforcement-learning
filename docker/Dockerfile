# Deep Reinforcment Learning
FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
MAINTAINER Ioannis Souflas <ioannis.souflas@hitachi-eu.com>


# AI 
##########################################################################################################
# install ai toolchain
RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    PIP_INSTALL="python -m pip --no-cache-dir install --upgrade" && \
    GIT_CLONE="git clone --depth 10" && \
    rm -rf /var/lib/apt/lists/* \
           /etc/apt/sources.list.d/cuda.list \
           /etc/apt/sources.list.d/nvidia-ml.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive $APT_INSTALL \
        build-essential \
        ca-certificates \
        cmake \
        wget \
        tar \
        git \
        vim \
        nano \
        libopencv-dev python-opencv \
        && \
    DEBIAN_FRONTEND=noninteractive $APT_INSTALL \
        software-properties-common \
        && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive $APT_INSTALL \
        python3.6 \
        python3.6-dev \
        python3.6-tk \
        && \
    wget -O ~/get-pip.py \
        https://bootstrap.pypa.io/get-pip.py && \
    python3.6 ~/get-pip.py && \
    ln -s /usr/bin/python3.6 /usr/local/bin/python3 && \
    ln -s /usr/bin/python3.6 /usr/local/bin/python && \
    $PIP_INSTALL \
        setuptools \
        catkin_pkg \
        catkin_tools \
        rospkg \
		empy \
    	Pillow>=4.2.1 \
        numpy>=1.11.0 \
        scipy \
        jupyter \
        pandas \
        pytest>=3.2.2 \
        docopt \
		pyyaml \
		protobuf==3.5.2 \
		grpcio==1.11.0 \
		ipykernel \
		torch==0.4.0 \
        scikit-learn \
        scikit-image \
        matplotlib \
        Cython \
        opencv-contrib-python \
        tensorflow-gpu==1.7.1 \
        h5py \
        keras==2.1.2 \
        pydot \
        graphviz \
        gym \
        && \
    ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/*

    RUN apt-get update && apt-get install -y \
    xvfb* \
    && rm -rf /var/lib/apt/lists/*

##########################################################################################################
