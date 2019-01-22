FROM alpine:3.8

# Install app dependencies (newman 4.X is compatible with node 6.X)
# Installing and upgrading nodejs
RUN apk add nodejs
RUN npm install -g n
RUN n latest

# Instaling and upgrading npm
RUN apk add nodejs-npm
RUN npm install -g npm@latest

# Installing newman
RUN npm install -g newman

# Creating report dirs
RUN mkdir /test
RUN mkdir /test/collections
RUN mkdir /test/report
RUN mkdir /test/report/success
RUN mkdir /test/report/error

WORKDIR /test