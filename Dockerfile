FROM kermet/docker-aws-cli:latest

RUN apk update && \
apk -Uu add nodejs npm make && \
npm install --global @aws-amplify/cli@^7 && \
rm /var/cache/apk/*

# Amplify version > 7 don't work on Alpine? https://github.com/aws-amplify/amplify-cli/issues/10295
