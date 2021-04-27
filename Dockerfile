FROM node:13

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g ionic
RUN npm install

COPY . .

EXPOSE 8080 8100

CMD ["ionic", "serve"]
