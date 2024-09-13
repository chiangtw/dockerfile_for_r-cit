FROM condaforge/mambaforge:latest

WORKDIR /data

RUN mamba create -n cit -c anaconda -c r -y r-cit \
    && mamba install -n cit -c r -y r-tidyverse r-r.utils \
    && mamba clean -a

RUN mamba init \
    && echo "mamba activate cit" >> ~/.bashrc

RUN /bin/bash -c "ln -s /opt/conda/envs/cit/bin/R /opt/conda/envs/cit/bin/Rscript /usr/bin"
