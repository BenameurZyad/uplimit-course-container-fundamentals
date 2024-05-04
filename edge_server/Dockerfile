# https://hub.docker.com/_/alpine
FROM alpine:latest
LABEL org.opencontainers.image.authors="z.b@test.com"
LABEL org.opencontainers.image.description="Week 1 Project - edge_server_v1"
LABEL org.opencontainers.image.source=https://hub.docker.com/_/alpine
LABEL org.opencontainers.image.licenses=APACHE2
LABEL server_type="edge_server"

# Updating the package repository and installs Nginx
RUN apk update

# The --no-cache flag prevents apk from caching the index locally, 
# saving space in the resulting image. 
# After testing : no difference with or without flag.
RUN apk add nginx

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY web_content /var/www

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
