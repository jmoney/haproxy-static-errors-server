#!/bin/bash

docker build -t haproxy-static-errors-server:latest .
docker run haproxy-static-errors-server:latest