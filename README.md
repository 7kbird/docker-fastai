# docker-fastai
Docker for fast.ai beginner. Based on `tensorflow/tensorflow` gpu version with more python installed.

Note: Only support tessorflow-GPU and Python 3

Example:
```
sudo nvidia-docker run --rm --name tf-notebook -p 8888:8888 -p 6006:6006 -v /home/paperspace/workspace:/notebooks/workspace 7kbird/fastai:latest jupyter notebook --allow-root
```
