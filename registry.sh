#!/usr/bin/env bash

set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

docker run --detach \
  --restart always \
  --name registry \
  --volume $(pwd)/registry-config.yml:/etc/docker/registry/config.yml \
  --volume /opt/volumes/registry:/var/lib/registry \
  --publish 6665:5000 \
  registry:2
