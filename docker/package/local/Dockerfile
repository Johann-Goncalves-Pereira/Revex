FROM node:slim

# ARG BASE_API_URL
# ENV BASE_API_URL=${BASE_API_URL}

WORKDIR /app

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install
RUN /node node_modules/esbuild/install.js

ENTRYPOINT ["/app/run/scripts/run.sh"]

# EXPOSE 9000
