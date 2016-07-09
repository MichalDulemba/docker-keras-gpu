FROM tensorflow/tensorflow:latest-devel-gpu

ENV KERAS_BACKEND tensorflow

RUN apt-get update && apt-get install -y \
  libhdf5-dev

RUN pip install \
  scipy \
  pyyaml \
  h5py \
  keras

RUN apt-get install -y \
  python3-pip \
  python3-numpy \
  python3-scipy

RUN pip3 install \
  ipython \
  pyyaml \
  h5py \
  keras \
  https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.9.0-cp34-cp34m-linux_x86_64.whl
