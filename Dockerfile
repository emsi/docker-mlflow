FROM python:3.10

RUN pip3 --no-cache-dir install mlflow[extras]

RUN mkdir -p /mlflow
WORKDIR /mlflow

# Set shell to bash
ENV SHELL /bin/bash

# Set locale
ENV LANG "C.UTF-8"
ENV LC_COLLATE "C.UTF-8"


CMD ["mlflow", "ui", "-h", "0.0.0.0"]
