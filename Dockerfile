FROM quay.io/mmondics/node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
CMD npm cache clean -f
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]
