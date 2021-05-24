#FROM node:15
#WORKDIR /app
#COPY package.json .
#RUN npm install
#COPY . ./
# if the value of port is not given then 3000 is taken as default value 
# ENV PORT 3000
# The Value of port is submitted here
#EXPOSE $PORT
#CMD [ "node","index.js" ]
#CMD ["npm", "run", "dev"]
FROM node:15
WORKDIR /app
COPY package.json .
ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development"  ]; \
     then npm install ; \
     else npm install --only=production; \
    fi
COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD [ "npm" , "run", "dev" ]




