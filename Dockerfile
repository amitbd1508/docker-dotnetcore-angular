FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster

LABEL maintainer="amitbd1508@gmail.com" \
org.label-schema.vcs-url="https://github.com/amitbd1508/docker-dotnetcore-angul$

ENV NODE_VERSION=14.2.0
RUN apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.s$
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version
RUN npm config set user 0
RUN npm config set unsafe-perm true
RUN npm install -g @angular/cli@latest
