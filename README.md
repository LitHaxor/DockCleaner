# Docker + Cleaner = DockCleaner

Automatically cleans your unused docker images, volumes, containers.

## Overview

**DockCleaner** will clean up your unused docker images,

### Docker container

**Dockupdater** is deployed via docker image in a standalone container like so:

```bash
docker container run \
    -d \
    --restart unless-stopped \
    -v /var/run/docker.sock:/var/run/docker.sock \
    lithasan/dockercleaner:latest
```

> This is image is compatible for amd64, arm32, and arm64 CPU architectures

### Docker swarm (service)

**DockCleaner** can be deploy on a service like this:

```bash
version: "3.6"

services:
  dockupdater:
    image: lithasan/dockercleaner:latest
    deploy:
      placement:
        constraints:
          - node.role == manager
```

> Dockupdater needs to run on a manager node
