FROM  tensorflow/tensorflow:2.4.0-jupyter

RUN apt update -y && apt upgrade -y  && apt install unzip nano git htop wget apt-utils -y

RUN pip install jupyterlab pandas flask keras numpy scikit-learn pandas-profiling seaborn sklearn folium 

RUN jupyter notebook --generate-config && echo "c.NotebookApp.quit_button = False" >> /root/.jupyter/jupyter_notebook_config.py

RUN mkdir data

WORKDIR /data

CMD ["jupyter", "lab", "--allow-root", "--notebook-dir=/data/", "--ip=0.0.0.0", "--port=8888"]
