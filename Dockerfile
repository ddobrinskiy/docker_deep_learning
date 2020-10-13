FROM rapidsai/rapidsai:cuda11.0-runtime-ubuntu16.04

RUN apt-get -qq update && apt-get install \
  vim \
  git \
  ssh \
  zsh \
  tree \
  --yes  > /dev/null

RUN conda install -n rapids \
  -c conda-forge \
  nodejs \
  ipywidgets \
  requests \
  plotly \
  loguru \
  tqdm \
  ipykernel \
  pip \
  --yes > /dev/null


RUN conda install -n rapids \
  -c fastai  \
  -c pytorch  \
  'fastai>=2' \
  --yes > /dev/null

# Overwrite default startup script to use jupyter token
COPY start_jupyter.sh /rapids/utils/

