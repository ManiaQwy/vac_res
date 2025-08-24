#instructions

FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=80
EXPOSE 80

CMD ["npm", "run", "serve"]


#docker build -t dockertest .

#docker images

#docker run -d -p 8080:80 --name dockertest-container dockertest

#http://localhost:8080/ (run in browser)

