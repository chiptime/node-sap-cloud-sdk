FROM node:12.2.0

WORKDIR /app/

COPY ./package.json .

RUN npm set @sap:registry=https://npm.sap.com

# --unsafe-perm=true --allow-root for fix error in install global dependency
RUN npm install -g @sap/cds-dk --unsafe-perm=true --allow-root

#install dependencies

#RUN npm install 

#COPY . .

#CMD node index.js

#EXPOSE 8080