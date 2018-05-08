FROM continuumio/anaconda3
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "nano"]
RUN /opt/conda/bin/conda update -n base conda -y 
RUN /opt/conda/bin/conda install jupyter -y
RUN /opt/conda/bin/conda install pytest-cov -y
RUN /opt/conda/bin/conda install pytest-xdist -y
RUN /opt/conda/bin/conda install pytest-html -y
RUN groupadd -g 1000 appuser && \
    useradd  -r -u 1000 -g appuser -ms /bin/bash appuser
USER appuser
WORKDIR /home/appuser
RUN  /bin/bash


