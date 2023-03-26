FROM alpine:3.16.0 as build-stage

# app runs on port 8080
# EXPOSE 5000

WORKDIR /usr/src/app

# copy sources
COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.10.40/api

# run installer
RUN apk add --no-cache curl nodejs npm && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -D gouser && \
    apk del curl && \
    rm -rf /var/lib/apt/lists/*



FROM busybox:1.36

# app runs on port 8080
EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build/  /usr/src/app/

# run all necessary commands
RUN adduser -D gouser

# now we can change the user
USER gouser

CMD ["busybox", "httpd", "-f", "-v", "-p", "5000"]
