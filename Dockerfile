FROM node:alpine

RUN npm install -g tileserver-gl
CMD tileserver-gl