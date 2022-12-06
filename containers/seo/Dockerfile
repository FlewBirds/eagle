FROM ubuntu:20.04



RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
#RUN cat /usr/share/zoneinfo/$CONTAINER_TIMEZONE

RUN apt-get update && DEBIAN_FRONTEND=noninteractive && apt-get install zip unzip curl vim apache2 -y
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/scripts

WORKDIR /opt/scripts

ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/seo-dream.zip /opt/scripts/

ARG DEBIAN_FRONTEND=noninteractive

RUN unzip /opt/scripts/seo-dream.zip -d /opt/scripts/ && mv templatemo_563_seo_dream seo

COPY ./000-default.conf /etc/apache2/sites-available
COPY ./apache2.conf /etc/apache2/apache2.conf
RUN chown www-data:www-data -R /opt/scripts/seo 

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2/apache2.pid
ENV APACHE_SERVER_NAME localhost
ENV APACHE_RUN_DIR /var/run/apache2/
ENV APACHE_DOCUMENT_ROOT /opt/scripts/seo

RUN mkdir /var/run/apache2 && chown www-data:www-data -R /var/run/apache2 && chown www-data:www-data -R /var/log/apache2/

USER www-data

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2ctl" ]

CMD [ "-DFOREGROUND" ]

