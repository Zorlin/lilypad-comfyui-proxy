# Use an official lightweight Alpine image.
FROM alpine:latest

# Install curl
RUN apk --no-cache add curl

# Copy the script into the container
COPY run-curl.sh /run-curl.sh

# Ensure the script is executable
RUN chmod +x /run-curl.sh

# Command to run on container start
CMD ["/run-curl.sh"]
