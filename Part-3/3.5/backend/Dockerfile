FROM alpine:latest

# app runs on port 8080
EXPOSE 8080

WORKDIR /usr/src/app

# install go
RUN apk add --no-cache go

# install go from tar
# RUN wget https://go.dev/dl/go1.16.15.linux-amd64.tar.gz
# RUN tar -C . -xzf go1.16.15.linux-amd64.tar.gz

# copy sources
COPY . .

# linux machine with IP 192.168.10.40 is accessed from the host windows pc
#ENV REQUEST_ORIGIN=http://192.168.10.40:5000

# run installer
RUN go build

# add user to alpine
RUN addgroup -S gogroup && adduser -S gouser -G gogroup

# run as non-root user
USER gouser

ENTRYPOINT ["./server"]
