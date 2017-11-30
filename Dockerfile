# install latest node
# https://hub.docker.com/_/node/
FROM node:latest

# create and set app directory
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

RUN npm install -g typescript

COPY publish-npm.sh /bin/

ENTRYPOINT ["/bin/publish-npm.sh"]
