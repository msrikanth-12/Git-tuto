# Use the official httpd image from the Docker Hub
FROM httpd:latest

# Copy custom configuration file to the image
COPY ./index.html /usr/local/apache2/conf/index.html

# Expose port 80
EXPOSE 80

