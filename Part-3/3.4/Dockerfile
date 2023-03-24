FROM docker:23-git

WORKDIR /usr/src/app

# install tooling
# RUN apk add --no-cache git

# copy sources
COPY builder.sh .

# run installer
ENTRYPOINT ["./builder.sh"]
