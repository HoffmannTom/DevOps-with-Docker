FROM ubuntu:16.04

# app runs on port 8080
EXPOSE 8080

WORKDIR /usr/src/app

RUN apt-get update && apt-get -y install curl wget tar

# install nodejs
RUN wget https://go.dev/dl/go1.16.15.linux-amd64.tar.gz
RUN tar -C . -xzf go1.16.15.linux-amd64.tar.gz

ENV PATH="$PATH:/usr/src/app/go/bin"

# copy sources
COPY . .

# linux machine with IP 192.168.10.40 is accessed from the host windows pc
# ENV REQUEST_ORIGIN=http://192.168.10.40:5000

# run installer
RUN go build

ENTRYPOINT ["./server"]

