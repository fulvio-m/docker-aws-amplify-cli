FROM kermet/docker-aws-cli:latest

RUN apk update && \
apk -Uu add nodejs npm make && \
npm install --global @aws-amplify/cli && \
rm /var/cache/apk/*

