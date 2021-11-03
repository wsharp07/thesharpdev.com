#!/bin/bash

trap "exit" INT TERM ERR
trap "kill 0" EXIT

./run-dev.sh &
./node_modules/.bin/cypress run