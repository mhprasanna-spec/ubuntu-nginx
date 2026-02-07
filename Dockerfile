FROM ubuntu:22.04

RUN apt-get update

RUN  apt-get install -y nginx

RUN apt-get install -y unzip

ADD https://templatemo.com/download/templatemo_610_aurum_gold /tmp/template.zip

RUN unzip /tmp/template.zip -d /tmp/

RUN cp -r /tmp/templatemo_610_aurum_gold/* /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
