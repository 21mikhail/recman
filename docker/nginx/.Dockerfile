FROM nginx:stable

RUN apt-get update \
&& apt-get install openssl 

RUN mkdir -p "/etc/ssl/private/site"
RUN openssl req -x509 -nodes -days 1600 -newkey rsa:2048  \
      -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname" \
      -keyout /etc/ssl/private/site/ssl-key.key  \
      -out /etc/ssl/private/site/ssl-bundle.crt

RUN chmod +r /etc/ssl/private/site/ssl-key.key /etc/ssl/private/site/ssl-bundle.crt