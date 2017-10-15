#!/bin/bash
# wait-for-postgres.sh

STATUS=$(./postgres-healthcheck.sh)
while [[ $? != 0 ]]; do
    echo "Postgres not running..."
    STATUS=$(./postgres-healthcheck.sh)
done;

echo "Postgres is ready."