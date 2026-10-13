FROM node:16-alpine

EXPOSE 5000

WORKDIR /app

RUN npm install -g serve

COPY package*.json ./

RUN npm install 

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN  npm run build

CMD ["serve" ,"-s", "-l" ,"5000" ,"build"]