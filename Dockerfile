# Node
FROM node:carbon-alpine as build

WORKDIR /usr/src/app

COPY . .
RUN npm install
VOLUME /usr/src/app/node_modules

ENTRYPOINT ["npm"]
CMD ["run", "build"]

FROM build as run

ENTRYPOINT ["node"]
