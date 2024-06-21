FROM registry.stage.redhat.io/ubi8/ubi-minimal:8.10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
WORKDIR /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]
