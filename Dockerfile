FROM centos:latest
RUN yum install -y httpd \
  zip \
  unzip 
WORKDIR /var/www/html
RUN echo "Welcome to UK - 1" > index.html
CMD["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
