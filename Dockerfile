FROM kermet/docker-aws-cli

RUN apk update && \
apk -Uu add npm && \
npm install --global @aws-amplify/cli && \
rm /var/cache/apk/*
