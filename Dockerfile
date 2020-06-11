FROM  tensorflow/tensorflow:2.2.0-jupyter

RUN apt update -y && apt upgrade -y  && apt install unzip nano git apt-utils -y

RUN pip install jupyterlab pandas flask keras numpy scikit-learn pandas-profiling

RUN mkdir data

WORKDIR /data

CMD ["jupyter", "lab", "--allow-root", "--notebook-dir=/data/", "--ip=0.0.0.0", "--port=8888"]
