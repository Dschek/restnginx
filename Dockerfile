FROM docker.pkg.github.com/dschek/restfrontreact/restfrontreact:latest
RUN rm -rf /usr/share/nginx/html/*
COPY ./build /usr/share/nginx/html/admin

FROM nginx:alpine

# RUN rm -rf /usr/share/nginx/html/*
# COPY ./build /usr/share/nginx/html
# COPY ./nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]