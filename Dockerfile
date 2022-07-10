FROM docker.pkg.github.com/dschek/restfrontreact/restfrontreact:latest
RUN rm -rf /usr/share/nginx/html/*
COPY ./build /usr/share/nginx/html/admin

# # RUN rm -rf /usr/share/nginx/html/*
# # COPY ./build /usr/share/nginx/html
# # COPY ./nginx.conf /etc/nginx/nginx.conf
# # ENTRYPOINT ["nginx", "-g", "daemon off;"]
# FROM nginx:alpine
ENTRYPOINT ["ls", "/usr/share/nginx/html/admin;"]