FROM nginx:1.10.1-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./src /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]