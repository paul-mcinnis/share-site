FROM node:9.10.1
WORKDIR /ng-app

# copy manifest and install before copying entire source - provides optimizations when rebuilding
COPY package*.json ./
RUN npm install

# copy everything else
COPY . ./

CMD ["npm", "start"]
