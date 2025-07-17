FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rd /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY CODE /usr/share/nginx/html/