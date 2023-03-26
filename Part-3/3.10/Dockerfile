FROM alpine:3.16.0 as build-stage

WORKDIR /usr/src/app

# copy sources
COPY . .

# run installer and add user
RUN apk add --no-cache go   `#install go environment`  && \
    CGO_ENABLED=0 go build  `#compile program statically to prevent dependency on libmusl`  && \
    apk del go

# Create a non-root user for the target image by creating a /etc/passwd file.
# This is necessary since the target image is based on scratch, which doesn't have adduser, cat, echo, or even sh.
RUN echo "gouser:x:34567:34567:/home:/:" > /etc_passwd



FROM scratch

# app runs on port 8080
EXPOSE 8080

WORKDIR /usr/src/app

# copy statically compiled file and password file
COPY --from=build-stage /usr/src/app/  /usr/src/app/
COPY --from=build-stage /etc_passwd    /etc/passwd

# run as non-root user
USER gouser

ENTRYPOINT ["./server"]
