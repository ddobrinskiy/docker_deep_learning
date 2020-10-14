FROM fastdotai/fastai-course:latest

RUN add-apt-repository ppa:graphics-drivers/ppa -y && \
    apt-get -qq update && apt-get install \
  vim \
  git \
  ssh \
  zsh \
  tree \
  nvidia-utils-450-server \
  --yes  > /dev/null

RUN conda install \
    -c defaults -c conda-forge \
    -c rapidsai -c nvidia \
  nodejs \
  ipywidgets \
  ipykernel \
  pip \
  jupyterlab \
  rapids=0.15 \
  python=3.7 \
  cudatoolkit=10.1 \
  --yes


# Overwrite default startup script to use jupyter token
COPY run_jupyter.sh /workspace

CMD [ "/bin/bash", "/workspace/run_jupyter.sh" ]

