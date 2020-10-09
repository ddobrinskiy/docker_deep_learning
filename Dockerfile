FROM rapidsai/rapidsai:cuda11.0-runtime-ubuntu16.04

RUN conda install -n rapids \
  -c conda-forge \
  --yes \
  --quiet \
  mlflow



# ENTRYPOINT [ "/bin/bash /rapids/utils/start_jupyter.sh " ]
# ENTRYPOINT ["/bin/bash ", "jupyter-lab --allow-root --ip=0.0.0.0 --no-browser" ]
# ENTRYPOINT [ "/bin/bash" ]

# EXPOSE 8888
# EXPOSE 8787
# EXPOSE 8786

# Overwrite default startup script to use jupyter token
COPY start_jupyter.sh /rapids/utils/
