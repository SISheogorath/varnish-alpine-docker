# varnish-alpine-docker
[![Build Status](https://travis-ci.org/SISheogorath/varnish-alpine-docker.svg?branch=master)](https://travis-ci.org/SISheogorath/varnish-alpine-docker)

A Varnish docker container based on Alpine Linux.

## Environment variables
* `VARNISH_BACKEND_ADDRESS` - host/ip of your backend.  Defaults to 192.168.1.65.
* `VARNISH_BACKEND_PORT` - TCP port of your backend.  Defaults to 80.
* `VARNISH_MEMORY` - how much memory Varnish can use for caching. Defaults to 100M.

## Quick start

Run with defaults:

```bash
docker run -ti --name=varnish-alpine sheogorath/varnish-alpine-docker
```

Specify your backend configuration:

```bash
docker run -e VARNISH_BACKEND_ADDRESS=a.b.c.d -e VARNISH_BACKEND_PORT=nn -ti --name=varnish-alpine sheogorath/varnish-alpine-docker
```

Build image locally:

```bash
git clone https://github.com/SISheogorath/varnish-alpine-docker.git
cd varnish-alpine-docker
docker build -t varnish-alpine-docker .
```

# Supported Docker versions

This image is officially supported on Docker version 1.13.0.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/SISheogorath/varnish-alpine-docker/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

## Notice

This Container was build from a modified version of [thiagofigueiro/varnish-alpine-docker/](https://hub.docker.com/r/thiagofigueiro/varnish-alpine-docker/)
