FROM ubuntu:22.04
ENV REFRESHED_AT 2022-06-22
RUN apt-get -yqq update && apt-get -yqq install nginx systemctl
RUN mkdir -p /var/www/html/website
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
RUN ls
CMD ["nginx", "-g", "daemon off;"]