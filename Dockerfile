FROM rapidsai/rapidsai:cuda11.0-runtime-ubuntu16.04

RUN conda install -n rapids \
  -c conda-forge \
  --yes \
  --quiet \
  mlflow

# Overwrite default startup script to use jupyter token
COPY start_jupyter.sh /rapids/utils/
