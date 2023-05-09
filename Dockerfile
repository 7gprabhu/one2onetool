FROM node:14-alpine

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

COPY . /usr/src/app

EXPOSE 80

CMD ["npm", "index.js"]
