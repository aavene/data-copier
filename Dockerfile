FROM python:3.10.6

#Install OS Modules
RUN apt update -y && \
    apt install telnet -y && \
    rm -rf /var/lib/apt/lists/*
#Copy Source Code
RUN mkdir -p /data-copier
COPY src /data-copier/src
COPY requirements.txt /data-copier

#Install Applications Dependencies
RUN pip install -r /data-copier/requirements.txt