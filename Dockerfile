FROM kermet/docker-aws-cli

RUN apk update && \
apk -Uux add npm && \
npm install -g @aws-amplify/cli && \
rm /var/cache/apk/*
