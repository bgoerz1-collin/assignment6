FROM fedora
RUN dnf -yqq install nginx php-fpm
ENV APPLICATION="MyPHPApp"
ENV VERSION="1.0"
WORKDIR /var/www/html/
COPY index.php /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
