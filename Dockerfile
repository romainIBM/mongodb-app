FROM quay.io/mmondics/node:latest
USER root
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
CMD npm install -g npm@10.8.1
COPY package.json /usr/src/app/
USER node
WORKDIR /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]
