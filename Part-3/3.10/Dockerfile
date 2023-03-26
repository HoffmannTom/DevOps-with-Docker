FROM ubuntu:20.04 as build-stage

WORKDIR /usr/src/app

# install python with pip
RUN apt-get update && apt-get -y install python3-pip

# install django
RUN pip install django

# copy sources
COPY leaky ./leaky/
COPY root ./root/
COPY db.sqlite3 manage.py setup.py setup.cfg pyproject.toml MANIFEST.in LICENSE README.md ./

# Test if deployment works
RUN python3 setup.py sdist



# FROM python:latest
FROM python:3.6-alpine
ENV PYTHONUNBUFFERED 1

# app runs on port 8000
EXPOSE 8000

WORKDIR /usr/src/app

# copy from build stage
COPY --from=build-stage /usr/src/app /usr/src/app

# add non-root user and install django
RUN adduser --system --no-create-home pyuser && \
    pip install django && \
    chown pyuser /usr/src/app

# use non root user
USER pyuser

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]