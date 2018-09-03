FROM tensorflow/tensorflow:latest-gpu
RUN apt-get update
RUN pip install matplotlib pandas scikit-learn librosa seaborn
RUN mkdir -p /home/data-science/projects
VOLUME /home/data-science/projects
RUN echo "c.NotebookApp.token = ''" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.password = ''" >> ~/.jupyter/jupyter_notebook_config.py
WORKDIR /home/data-science/projects
RUN apt-get install -y ffmpeg
RUN pip install hickle
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/home/data-science/projects --ip 0.0.0.0 --no-browser --allow-root --port=80"]
EXPOSE 80

