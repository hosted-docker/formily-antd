FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

ADD doc-site  /usr/share/nginx/html/mirror/formily-antd

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]