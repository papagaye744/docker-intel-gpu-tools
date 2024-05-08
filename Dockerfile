FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y \
        ffmpeg \
        intel-gpu-tools \
        vainfo && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/*
