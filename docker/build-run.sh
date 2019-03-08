#!/usr/bin/env bash

docker rmi axual/kafka-connect-ui:latest
docker build -t axual/kafka-connect-ui .
docker run --rm -it -p 8000:8000 -e "CONNECT_URL=http://192.168.99.121:8083;Daisy,http://192.168.99.123:8083;Carnation" -e "PROXY=false" axual/kafka-connect-ui
