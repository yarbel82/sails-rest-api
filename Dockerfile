############################################################################
#First task is to create a Dockerfile for this application to build a Docker
#image. Docker image should contain all application files and application
#dependencies it should expose port 1337,
#it should run command sails lift by default.
#As a base image you should use node:10.15.3.
############################################################################
#Use node:10.15.3
FROM node:10.15.3

WORKDIR /usr/src/app
#RUN npm cache clean --force
#RUN rm -rf node_modules

#Application dependencies

COPY package*.json ./

RUN npm install
#Docker image contain all application files

COPY . .


#Expose port 1337

EXPOSE 1337


#Run command sails lift by default
#sales lift included in app.js

CMD [ "node", "app.js" ]
