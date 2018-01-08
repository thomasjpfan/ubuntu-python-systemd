FROM ubuntu:16.04

ENV container docker

RUN find /etc/systemd/system \
    /lib/systemd/system \
    -path '*.wants/*' \
    -not -name '*journald*' \
    -not -name '*systemd-tmpfiles*' \
    -not -name '*systemd-user-sessions*' \
    -exec rm \{} \;

RUN systemctl set-default multi-user.target

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    software-properties-common \
    python sudo bash ca-certificates iproute2 && \
    rm -Rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && rm -Rf /usr/share/man && \
    apt-get clean

STOPSIGNAL SIGRTMIN+3

CMD ["/bin/bash", "-c", "exec /sbin/init --log-target=journal 3>&1"]
