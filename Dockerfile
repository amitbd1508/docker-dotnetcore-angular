FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster

LABEL maintainer="amitbd1508@gmail.com" \
org.label-schema.vcs-url="https://github.com/amitbd1508/docker-dotnetcore-angular"

RUN apt-get update && apt-get add --no-cache nodejs-current nodejs-npm python make g++ \
&& npm install -g npm \
&& npm install -g node-sass --force --unsafe-perm=true --allow-root \
&& npm install -g @angular/cli
