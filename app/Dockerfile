# nginx:1.10.1-alpine as the base image
FROM nginx:1.10.1-alpine

# removing default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy project files into the container
COPY ./src /usr/share/nginx/html

# Copying over the custom nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exposing port 80
EXPOSE 80

# Starting Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

