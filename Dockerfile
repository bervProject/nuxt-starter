FROM node:lts-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile
COPY . .
RUN yarn build
ENV HOST 0.0.0.0
ENTRYPOINT [ "yarn", "start" ]
