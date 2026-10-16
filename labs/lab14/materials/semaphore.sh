#!/bin/bash

RESOURCE="resource.lock"
T1=5
T2=3

echo "Process $$ waiting for resource..."

while [ -f "$RESOURCE" ]
do
    echo "Process $$: resource is busy, waiting..."
    sleep 1
done

echo "Process $$: resource is free, capturing it"
touch "$RESOURCE"

echo "Process $$: using resource for $T2 seconds"
sleep $T2

echo "Process $$: releasing resource"
rm -f "$RESOURCE"

echo "Process $$: done"
