#!/bin/bash


curl -i -H "Accept: application/vnd.travis-ci.2+json" "https://api.travis-ci.org/repos/Pearson-Higher-Ed/ux-test-platform/builds" > test.json	
LATEST_ID=$(grep -o '"state":.[a-z\"]*' test.json | head -1)
LATEST_STATE=$(grep -o '"id":.[0-9]*' test.json | head -1 | grep ':.[0-9]*')
echo "LATEST_ID: $LATEST_ID"
echo "LATEST_STATE: $LATEST_STATE"

echo "The ppid id is: " $$
echo "The PPID id is: " $PPID
kill -9 $PPID
echo "whats the exit value:" $?
