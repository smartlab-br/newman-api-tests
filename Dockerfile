FROM node:8.15

# Install app dependencies
RUN npm install -g newman@4.3.1

RUN mkdir /test

RUN mkdir /test/collections
RUN mkdir /test/report
RUN mkdir /test/report/success
RUN mkdir /test/report/error

WORKDIR /test