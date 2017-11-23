# docker-fastai
Docker for fast.ai beginner. Based on `tensorflow/tensorflow` with more python installed.

Note: Support GPU version only with Python 3

Example:
```
sudo nvidia-docker run --rm --name tf-notebook -p 8888:8888 -p 6006:6006 -v /home/paperspace/workspace:/notebooks/workspace 7kbird/docker-fastai:1.4.0-gpu-py3 jupyter notebook --allow-root
```
