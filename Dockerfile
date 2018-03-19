# use a node base image
FROM node:carbon

####
#FROM jenkins USER root  RUN curl -sSL https://get.docker.com/ | sh && \ usermod -aG docker jenkins && \ apt-get install sudo COPY run.sh ./run.sh ENTRYPOINT ["/bin/bash","-c","./run.sh"]

# set maintainer
LABEL maintainer "Ajeet"

# Create app directory
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY package*.json ./



RUN npm install

# If you are building your code for production
# RUN npm install --only=production

#To bundle your app's source code inside the Docker image, use the COPY instruction:

# Bundle app source
COPY . .


#Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon:
# tell docker what port to expose
RUN echo "exposing 8000"
EXPOSE 8000


#define the command to run your app using CMD which defines your runtime. 
#Here we will use the basic npm start which will run node server.js to start your server:
RUN echo "starting npm"
CMD [ "npm", "start" ]

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1



