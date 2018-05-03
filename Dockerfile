FROM continuumio/anaconda3
RUN /opt/conda/bin/conda update -n base conda -y 
RUN /opt/conda/bin/conda install jupyter -y
RUN groupadd -g 1000 appuser && \
    useradd  -r -u 1000 -g appuser -ms /bin/bash appuser
USER appuser
WORKDIR /home/appuser
RUN  /bin/bash


