#instructions

FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

ENV PORT=80
EXPOSE 80

CMD ["npm", "run", "serve"]


#docker build -t dockertest .

