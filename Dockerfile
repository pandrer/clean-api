FROM artifactory.nordstrom.com/docker/cic/nodejs_runtime_v18:2.1.0

WORKDIR /clean_api_svc

COPY . /clean_api_svc

EXPOSE 8080

CMD node ./dist/server.js