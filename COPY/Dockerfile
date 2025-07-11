FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html.index
COPY html.index /usr/share/nginx/html.index
CMD ["nginx", "-g", "daemon off;"]