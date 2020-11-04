FROM fastdotai/fastai-course:latest

RUN add-apt-repository ppa:graphics-drivers/ppa -y && \
    apt-get -qq update && apt-get install \
  vim \
  git \
  ssh \
  zsh \
  tree \
  --yes  > /dev/null
#  nvidia-utils-450-server \

RUN conda install \
    -c defaults -c conda-forge \
    -c rapidsai -c nvidia \
  ipykernel \
  ipywidgets \
  jupyterlab \
  loguru \
  mlflow \
  nodejs \
  pip \
  rapids=0.16 \
  --yes
#  python=3.7 \
#  cudatoolkit=10.1 \

# add all stuff in workspace to notebooks 
RUN ln -s /workspace/* /notebooks
RUN ln -s /storage/proj /notebooks/proj

# Overwrite default startup script to use jupyter token
COPY run_jupyter.sh /workspace

CMD [ "/bin/bash", "/workspace/run_jupyter.sh" ]

