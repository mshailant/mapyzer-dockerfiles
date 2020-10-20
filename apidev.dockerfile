FROM node:12.9.0-alpine as build

RUN apk update && apk add --no-cache bash

RUN npm install -g typescript
RUN npm install -g @angular/cli

# set working directory
WORKDIR /app

EXPOSE 4200

ENV PS1="[Mapyzer-Web:\W]\$ "

CMD [ "bash" ]
