FROM alpine:3.16.0

# app runs on port 8080
EXPOSE 8080

WORKDIR /usr/src/app

# copy sources
COPY . .

# run installer and add user
RUN apk add --no-cache go && \
        go build && \
        addgroup -S gogroup && \
        adduser -S gouser -G gogroup && \
        apk del go

# run as non-root user
USER gouser

ENTRYPOINT ["./server"]
