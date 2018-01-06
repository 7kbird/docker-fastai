# docker-fastai
Docker for fast.ai beginner. Based on `tensorflow/tensorflow` gpu version with more python installed.

Note: Only support GPU version of tensorflow, theano, pytorch, keras with Python 3

Current Versions:
- Python: 3.5
- tensorflow-gpu: 1.4.0
- theano: 1.0.1
- pytorch: 0.3.0.post4
- keras: 2.0.9
- numpy: 1.13.3
- scipy: 1.0.0
- scikit-learn: 0.19.1

## Example:

### Notebook only

```
sudo nvidia-docker run --rm --name tf-notebook -p 8888:8888 -p 6006:6006 -v /home/paperspace/workspace:/notebooks/workspace 7kbird/fastai:latest jupyter notebook --allow-root
```

### Notebook with tensorboard
```
shell_file="/home/paperspace/workspace/docker_start.sh"
log_dir = ""
echo "#!/bin/bash" > $shell_file
echo "{ jupyter notebook --allow-root --debug 2>&1 & tensorboard --logdir=/notebooks/workspace/tf_log 2>&1 ; }" >> $shell_file
sudo nvidia-docker run --rm --name notebook -p 8888:8888 -p 6006:6006 -v /home/paperspace/workspace:/notebooks/workspace 7kbird/fastai:latest sh /notebooks/workspace/docker_start.sh
```