# Base image
FROM debian:bullseye

MAINTAINER Peter Misinsky <github@cs2.ch>

# Update cache
RUN apt-get update

# Install required packages
RUN apt-get install xvfb libxrender1 libfontconfig1 libssl-dev curl libjpeg62-turbo -y

# Install wkhtmltopdf
ADD wkhtmltopdf /usr/bin/wkhtmltopdf
RUN chmod 755 /usr/bin/wkhtmltopdf

# Clear apt-cache
RUN apt-get clean

# Add startup script
ADD startup /usr/bin/startup
RUN chmod 755 /usr/bin/startup

# Execute startup script to keep container running
CMD [ "/usr/bin/startup" ]
