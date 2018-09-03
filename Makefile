image:
	docker build -t speech-recognition:latest .
run:
	nvidia-docker run -p 80:80 --shm-size 16G --mount type=bind,source=/home/kamil/projects/speech-recognition,target=/home/data-science/projects -it speech-recognition
