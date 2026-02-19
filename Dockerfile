FROM golang:1.22-bookworm
WORKDIR /app
RUN apt-get update && apt-get install -y git curl patch \
    && rm -rf /var/lib/apt/lists/*
COPY . .
