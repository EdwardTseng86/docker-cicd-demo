FROM nginx:mainline-alpine
COPY ./index.html /usr/share/nginx/html

EXPOSE 80