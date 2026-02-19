FROM golang:1.21-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git curl patch \
    && rm -rf /var/lib/apt/lists/*
COPY . .
