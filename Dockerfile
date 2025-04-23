FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3.10 python3-pip git

RUN pip3 install pyYAML
RUN pip3 install --upgrade pip

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]