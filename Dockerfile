FROM node:14-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

COPY . /usr/src/app

EXPOSE 3000

RUN env

CMD ["npm", "start"]
