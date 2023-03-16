FROM ubuntu:20.04

# app runs on port 8000
EXPOSE 8000

WORKDIR /usr/src/app

# install python with pip
RUN apt-get update && apt-get -y install python3-pip

# copy sources
COPY . .

# install django
RUN pip install django

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]