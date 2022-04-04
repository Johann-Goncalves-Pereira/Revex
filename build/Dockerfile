FROM node:16.14.2

WORKDIR /app

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install

COPY . .

ENV PORT=3000

EXPOSE 3000

CMD ["yarn", "dev"]
