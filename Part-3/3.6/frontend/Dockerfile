FROM ubuntu:16.04

# app runs on port 5000
EXPOSE 5000

WORKDIR /usr/src/app

# copy sources
COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.10.40/api

# run installer
RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt-get -y install nodejs && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m httpuser && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

# now we can change the user
USER httpuser

CMD ["serve", "-s", "-l", "5000", "build"]
