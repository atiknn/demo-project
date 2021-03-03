FROM centos:latest
RUN yum install -y httpd
RUN cd /var/www/html
WORKDIR cd /var/www/html
RUN echo "Welcome to UK - 1" > index.html
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
