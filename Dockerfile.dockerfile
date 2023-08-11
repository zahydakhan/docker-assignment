From python:latest

RUN apt-get update

COPY . /docker_assignment/

ENTRYPOINT app.py