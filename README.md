# thomasjpfan/ubuntu-python-systemd

[![CircleCI](https://circleci.com/gh/thomasjpfan/ubuntu-python-systemd/tree/master.svg?style=svg)](https://circleci.com/gh/thomasjpfan/ubuntu-python-systemd/tree/master)

Based on [solita/docker-systemd](https://github.com/solita/docker-systemd), which runs `systemd`. This Docker image installs python to the image to provide ansible-playbook testing. The `solita/docker-systemd` image solves the PID 1 zombie reaping problem in docker, and properly handles kill signals. This `thomasjpfan/ubuntu-python-systemd` image installs dependencies used by molecule to test ansible playbooks.

**This image is meant for ansible playbook testing! Not production!**

## Running

For python 2 use:

```bash
docker run -d --rm --name systemd --privileged \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro -t \
    thomasjpfan/ubuntu-python-systemd:16.04-py2
```

For python 3 use:

```bash
docker run -d --rm --name systemd --privileged \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro -t \
    thomasjpfan/ubuntu-python-systemd:16.04-py3
```
