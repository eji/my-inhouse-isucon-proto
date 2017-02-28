#!/usr/bin/env bash

TARGET_NAME=$1
TARGET_APP_URL=$2
BENCHMARK_SERVICE_HOST="http://localhost:4567/benchmark/requests"

curl -X POST -F "name=$TARGET_APP" -F "url=$TARGET_APP_URL" $BENCHMARK_SERVICE_HOST
