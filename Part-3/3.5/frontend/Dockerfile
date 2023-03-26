FROM ubuntu:16.04

# app runs on port 8080
EXPOSE 5000

WORKDIR /usr/src/app

RUN apt-get update && apt-get -y install curl

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs

# copy sources
COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.10.40/api

# run installer
RUN npm install

# production
RUN npm run build
RUN npm install -g serve

# create the appuser
RUN useradd -m httpuser

# now we can change the user
USER httpuser

CMD ["serve", "-s", "-l", "5000", "build"]
