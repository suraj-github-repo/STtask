#dockerfile for apache2
FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y vim
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]


#Dockerfile for NGNIX
FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install vim
COPY . /var/www/html/
EXPOSE 80
CMD ["nginx", "start"]
