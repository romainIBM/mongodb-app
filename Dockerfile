FROM quay.io/mmondics/node:erbium-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
WORKDIR /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]
