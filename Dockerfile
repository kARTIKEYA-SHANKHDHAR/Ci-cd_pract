
FROM ubuntu:latest
RUN apt update && apt install -y nginx
COPY application/index.html /var/www/html/index.html
COPY application/style.css /var/www/html/style.css
COPY application/script.js /var/www/html/script.js
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
