# Fetching the minified node image on apline linux
FROM node:slim

# Copying all the files in our project
COPY . .

# Setting up the work directory
WORKDIR /sample-nodejs

# Installing dependencies
RUN npm install

# Starting our application
CMD [ "node", "app.js" ]

