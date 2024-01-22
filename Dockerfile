# Use the official WordPress image as the base image
FROM wordpress:latest

# Set environment variables for WordPress
ENV WORDPRESS_DB_HOST=localhost \
    WORDPRESS_DB_NAME=wordpress \
    WORDPRESS_DB_USER=root \
    WORDPRESS_DB_PASSWORD=root \
    WORDPRESS_TABLE_PREFIX=wp_

# Expose port 80 for web server
EXPOSE 80

# Copy custom theme or plugins if needed
# COPY custom-theme /var/www/html/wp-content/themes/custom-theme
# COPY custom-plugin /var/www/html/wp-content/plugins/custom-plugin

# Custom configurations, if any
# ...

# Healthcheck to verify the container is healthy
HEALTHCHECK CMD curl --fail http://localhost || exit 1

# Define the entry point
CMD ["apache2-foreground"]
