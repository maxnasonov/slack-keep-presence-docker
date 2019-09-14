FROM node:8.16.1-alpine

ENV SLACK_TOKEN=set_your_token

RUN npm install slack-keep-presence@1.0.9

ENTRYPOINT timeout -t 7200 /node_modules/.bin/slack-keep-presence -d
