#!/bin/bash

# check number of parameters
if [ $# -lt 2 ]; then
  echo 1>&2 "Not enough arguments."
  echo 1>&2 "Usage: builder.sh <github-repo> <docker-hub-repo>"
  echo 1>&2 "Example: ./builder.sh HoffmannTom/leaky hoffmanntom/leaky"
  exit 2
fi

# git clone https://github.com/$1.git
github=$1

# cut off the last part which is the repo. The regex */ matches the part which is cut off
repo=${github#*/}

# docker container tag as 2nd parameter
tag=$2

# clean old directory
if [ -d "$repo" ]; then
   echo "found directory $repo. Deleting ..."
   rm -Rf $repo;
fi

# fetch repo
echo "cloning repo $1"
git clone https://github.com/$1.git

# build docker
echo "building docker image ..."
docker build -t $tag $repo

# publish on docker hub
echo "pushing image ..."
docker push $tag

exit 0
