FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -y apache2 && apt-get clean
ADD . /var/www/html
EXPOSE 83
CMD apachectl -D FOREGROUND
