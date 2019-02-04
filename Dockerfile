# Dockerfile for the demo!
# Written by Wyatt J. Miller

# This command retrives the PHP Docker image from a centralized repsistory
FROM php:7.0-apache

# This command set the working directory inside the Docker image
WORKDIR /var/www/html

# This command copies this directory to a directory inside the Docker image
# In this case, it's going to /var/www/html, the default web hosting directory
COPY . .

# Testing
RUN bash -c 'apt-get update && apt-get install -y ruby ruby-dev && gem install sass'
RUN bash -c 'cd /var/www/html && sass style.scss style.css' 

# This command exposes port 80 on the Docker image
EXPOSE 80
