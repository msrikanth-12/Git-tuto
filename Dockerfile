# Use the official httpd image from the Docker Hub
FROM httpd:latest

# Copy custom configuration file to the image
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

# Expose port 80
EXPOSE 80

