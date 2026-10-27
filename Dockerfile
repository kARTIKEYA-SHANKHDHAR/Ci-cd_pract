FROM ubuntu:latest

RUN apt update && apt install -y nginx

COPY index.html /var/www/html/index.html
COPY style.css /var/www/html/style.css
COPY script.js /var/www/html/script.js

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
