FROM nginx:alpine3.18

COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*

ENTRYPOINT ["nginx", "-g", "daemon off;"]
