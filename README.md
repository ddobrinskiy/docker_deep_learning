# docker_deep_learning

docker pull rapidsai/rapidsai:cuda11.0-runtime-ubuntu16.04
docker run --gpus all --rm -it -p 8888:8888 -p 8787:8787 -p 8786:8786 \
    rapidsai/rapidsai:cuda11.0-runtime-ubuntu16.04
