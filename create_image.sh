#!/usr/bin/env bash

# remove any existing containers
docker container prune -f

CURDIR=$(pwd)
echo "$CURDIR is root dir..."

echo "build and run nginx"
cd nginx && ./run.sh
cd "$CURDIR"
echo "build and run postgres"
cd postgres && ./run.sh
cd "$CURDIR"
echo "build and run node" 
cd node && ./run.sh
cd "$CURDIR"


docker container ls
./wait-for-postgres.sh
echo "restart node"
./restart-node.sh