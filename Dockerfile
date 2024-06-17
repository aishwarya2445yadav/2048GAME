FROM ubuntu:22.04

# Update and install necessary packages
RUN apt-get update && apt-get install -y nginx zip curl

# Configure nginx
RUN echo "daemon off;" >>/etc/nginx/nginx.conf

# Download the ZIP file
RUN curl -o /var/www/html/master.zip -L https://github.com/gabrielecirulli/2048/p

# Verify the ZIP file is a valid archive and extract it
RUN cd /var/www/html/ && \
    unzip master.zip && \
    mv 2048-master/* . && \
    rm -rf 2048-master master.zip

EXPOSE 80



CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]