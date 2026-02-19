FROM golang:1.22-bookworm
WORKDIR /app
RUN apt-get update && apt-get install -y git curl patch python3 python3-pip \
    && pip3 install --break-system-packages pytest \
    && rm -rf /var/lib/apt/lists/*
COPY . .
