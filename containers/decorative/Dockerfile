# https://hub.docker.com/_/httpd

FROM httpd:2.4
#COPY ./evonyee/ /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/conf/
#ADD evonyee.tar.gz /usr/local/apache2/htdocs/
RUN apt-get update && apt-get install zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/evonyee.zip /usr/local/apache2/htdocs/
RUN unzip /usr/local/apache2/htdocs/evonyee.zip -d /usr/local/apache2/htdocs/



