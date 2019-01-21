FROM node:5.11.0

# Install app dependencies
RUN npm install -g newman@beta

RUN mkdir /test

RUN mkdir /test/collections
RUN mkdir /test/report
RUN mkdir /test/report/success
RUN mkdir /test/report/error

WORKDIR /test