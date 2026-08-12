FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        openssh-server \
        python3 \ 
	sudo \
    && rm -rf /var/lib/apt/lists/*
