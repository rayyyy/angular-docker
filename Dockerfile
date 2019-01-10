FROM node:11.6.0 as build_env

RUN npm install -g @angular/cli
WORKDIR /root/my-app
COPY . /root/my-app/