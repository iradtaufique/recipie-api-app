FROM python:3.8-alpine
MAINTAINER Ira Taufique

ENV PYTHONUNBUFFERED 1

# this line copy the requirements in fo
COPY ./requirements.txt /requirements.txt

# Run the requirements in /requirements.txt
RUN pip install -r /requirements.txt

# Create a directory colled app
RUN mkdir /app

# switching to app directory
WORKDIR /app
COPY ./app /app

# Creating user and switching to that user
RUN adduser -D user
USER user