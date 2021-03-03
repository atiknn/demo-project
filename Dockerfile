FROM centos:latest
RUN yum install -y httpd
WORKDIR cd /var/www/html
RUN echo "Welcome to UK - 1" > index.html
RUN touch index1.html
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
