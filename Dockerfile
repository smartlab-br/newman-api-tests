FROM node:6.16.0-alpine

# Install app dependencies (newman 4.X is compatible with node 6.X)
RUN npm install -g newman@4.3.1

RUN mkdir /test

RUN mkdir /test/collections
RUN mkdir /test/report
RUN mkdir /test/report/success
RUN mkdir /test/report/error

WORKDIR /test