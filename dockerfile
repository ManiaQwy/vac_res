#instructions

FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 80

CMD ["npm", "run", "serve"]


#docker build -t dockertest .

#docker images

#docker run -it -p 8080:8080 dockertest

#http://localhost:8080/ (run in browser)

