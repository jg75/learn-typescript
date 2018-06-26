# Node
FROM node:carbon-alpine as app

WORKDIR /usr/src/app

COPY . .
RUN npm install
VOLUME /usr/src/app/node_modules

EXPOSE 80

ENTRYPOINT ["npm"]
CMD ["run", "build"]
