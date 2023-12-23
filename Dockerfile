FROM node:21-alpine3.18
WORKDIR /app
COPY . .
RUN nmp i
ENTRYPOINT [ "npm", "start" ]

