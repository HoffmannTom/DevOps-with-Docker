FROM alpine:3.16.0

# app runs on port 8080
EXPOSE 5000

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

# now we can change the user
USER gouser

CMD ["serve", "-s", "-l", "5000", "build"]