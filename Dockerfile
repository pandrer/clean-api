FROM node:lts

WORKDIR /clean_api_svc

COPY . /clean_api_svc

EXPOSE 8080

CMD node ./dist/server.js
