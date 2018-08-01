# Kinetic ROS-base UnitTest Machine

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/lovato/docker-kinetic-ros-base-tests.svg?branch=master)](https://travis-ci.org/lovato/docker-kinetic-ros-base-tests)

All you need to execute ROS Kinetic unit tests.

## Pull from Docker Hub

```bash
docker pull lovato/kinetic-ros-base-tests:latest
```

## Build from GitHub

```bash
docker build -t lovato/kinetic-ros-base-tests github.com/lovato/docker-kinetic-ros-base-tests
```

## Run image

```bash
docker run -v ($pwd):/code/source lovato/kinetic-ros-base-tests \
  /bin/sh -c "/opt/bin/start-roscore.sh && \
  cp -r /code/source /code/build && \
  pip install -r /code/build/requirements.txt && \
  pip install -r /code/build/requirements-dev.txt && \
  cd /code/build && \
  pytest"
```

Both Pytest and Nosetests are pre-installed.

## Use as base image

```Dockerfile
FROM lovato/kinetic-ros-base-tests:latest
```
