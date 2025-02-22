FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .
ARG DB_PASSWORD
ENV DB_PASSWORD=${DB_PASSWORD}

EXPOSE 3000

CMD ["npm", "start"] 