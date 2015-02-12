#!/bin/bash

#
# once fig is executed, you can use this script to execute the test
#
# Example:
#
# ./kafkatest.sh -iterations=200000 -skip=10000 -topic=topic6
#

set -eu

KAFKA_IP=$(docker-machine ip)
KAFKA_PORT=$(docker port kafkatest_kafka_1 9092 | awk -F: '{print $2}')

kafkatest -kafka=${KAFKA_IP}:${KAFKA_PORT} $@

