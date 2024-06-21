FROM docker.io/s390x/node:hydrogen-bullseye-slim
USER root
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
USER node
WORKDIR /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]
