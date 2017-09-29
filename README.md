# thomasjpfan/ubuntu-python-systemd

[![CircleCI](https://circleci.com/gh/thomasjpfan/ubuntu-python-systemd/tree/master.svg?style=svg)](https://circleci.com/gh/thomasjpfan/ubuntu-python-systemd/tree/master)

Based on [solita/docker-systemd](https://github.com/solita/docker-systemd), which runs `systemd`. This Docker image installs python to the image to provide ansible-playbook testing.

The `solita/docker-systemd` image solves the PID 1 zombie reaping problem in docker, and properly handles kill signals.

**This image is meant for ansible playbook testing! Not production!**

## Running

```
docker run -d --name systemd --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro thomasjpfan/ubuntu-python-systemd
```
