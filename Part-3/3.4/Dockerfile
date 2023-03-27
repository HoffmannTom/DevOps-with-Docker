FROM docker:23-git

WORKDIR /usr/src/app

# copy sources
COPY builder.sh .

# run installer
ENTRYPOINT ["./builder.sh"]
