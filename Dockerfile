FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        openssh-server \
        python3 \
    && rm -rf /var/lib/apt/lists/*
