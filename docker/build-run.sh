docker build -t axual/kafka-connect-ui .
docker run --rm -it -p 8000:8000 -e "CONNECT_URL=http://192.168.99.123:8083,daisy" axual/kafka-connect-ui
