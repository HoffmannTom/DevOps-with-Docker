FROM ubuntu:20.04

# app runs on port 8000
EXPOSE 8000

WORKDIR /usr/src/app

# install python with pip
RUN apt-get update && apt-get -y install python3-pip

# install django
RUN pip install django

# copy sources
COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

