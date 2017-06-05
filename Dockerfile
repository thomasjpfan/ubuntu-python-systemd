FROM solita/ubuntu-systemd:16.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 sudo && \
    rm -Rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && rm -Rf /usr/share/man && \
    apt-get clean
