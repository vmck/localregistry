# localregistry
Docker cached registry

## Installation

- clone the repo
- copy {root}/daemon.json in /etc/docker/daemon.json
- run `systemctl restart docker`
- run `{root}/registry.sh`

Now you have a working registry!
