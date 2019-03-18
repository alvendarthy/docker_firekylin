FROM node:latest

MAINTAINER alvendarthy@gmail.com

EXPOSE 8360

WORKDIR /opt

ADD https://firekylin.org/release/latest.tar.gz .
RUN tar xvf latest.tar.gz
RUN rm -rf latest.tar.gz

WORKDIR /opt/firekylin
RUN npm install


CMD node www/production.js
