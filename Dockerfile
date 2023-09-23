FROM nginx:alpine

RUN apk add --no-cache gettext
COPY ./nginx.conf /etc/nginx/nginx.conf.template

CMD /bin/sh -c "envsubst '$(env | grep NGINX_ | xargs)' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"
