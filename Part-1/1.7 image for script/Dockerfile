# Start from the ubuntu image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the fetch.sh file from this location to /usr/src/app/ creating /usr/src/app/fetch.sh
COPY fetch.sh .

# Alternatively, if we skipped chmod earlier, we can add execution permissions during the build.
RUN chmod +x fetch.sh

# Install curl
RUN apt-get update && apt-get -y install curl

# When running docker run the command will be ./fetch.sh
CMD ./fetch.sh