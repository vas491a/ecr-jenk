FROM node:18

  #create app directory
  WORKDIR /usr/src/app
  # install app independencie
  #willcard is used to ensure both package-json AND package-lock-json are copied
  # where avalible
  COPY package*.json./

  RUN npm install
  # if you are building your code for production
  # RUN npm ci--omit=dev

  # bundle app source
  COPY . .
  EXPOSE 8080
  CMD ["node","server.js"]
  
