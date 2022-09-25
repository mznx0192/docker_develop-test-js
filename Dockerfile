FROM node:16.17
LABEL MAINTAINER="paul <paul@stevelabs.co>"

# ENV TZ=Asia/Seoul

RUN npm i -g pm2
RUN pm2 install pm2-logrotate

RUN mkdir -p /app
WORKDIR /app

# ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh .
ADD package*.json .
RUN npm install

ADD dist .

# RUN chmod +x wait-for-it.sh

EXPOSE 3000

CMD [ "npm", "run", "start:prod" ]
