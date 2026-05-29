FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04

RUN apt-get update \
    && apt-get install -y curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL --max-time 180 -o /usr/local/bin/pearl-miner \
        https://pearlhash.xyz/downloads/pearl-miner-v4 \
    && chmod +x /usr/local/bin/pearl-miner

ENV HOST="84.32.220.219:9000"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
