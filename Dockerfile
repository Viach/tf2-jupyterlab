FROM  tensorflow/tensorflow:2.2.0-jupyter

RUN apt update && apt upgrade -y  && apt install nano git apt-utils -y

RUN pip install jupyterlab pandas flask keras numpy scikit-learn 

RUN mkdir data

WORKDIR /data

CMD ["jupyter", "lab", "--allow-root", "--notebook-dir=/data/"]
