FROM solita/ubuntu-systemd:16.04

RUN apt-get update && \
    apt-get install -y python3 && \
    rm -Rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && rm -Rf /usr/share/man && \
    apt-get clean
