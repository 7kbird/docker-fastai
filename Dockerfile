FROM tensorflow/tensorflow:1.4.0-gpu-py3

RUN pip install --no-cache-dir \
	keras==2.1.1 \
	mechanicalsoup \
	progressbar2 \
	bcolz

# inherit ENTRYPOINT and CMD from tensorflow docker
