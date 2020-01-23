FROM devopsedu/webapp



ADD . /var/www/html
RUN rm /var/www/html/index.html
EXPOSE 80 7080 443

CMD ["apachectl", "-D", "FOREGROUND"]