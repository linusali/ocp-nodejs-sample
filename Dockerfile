FROM registry.access.redhat.com/ubi8/nodejs-16:1-139
WORKDIR $HOME
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
