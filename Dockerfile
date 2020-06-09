# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# copy script for generating SSL certs
COPY generate_ssl_cert.sh /tmp/
RUN chmod u+x /tmp/generate_ssl_cert.sh

# overwrite the default Nginx configuration file with our own
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/*.conf /etc/nginx/conf.d

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
