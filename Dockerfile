# Use the Cypress base image
FROM cypress/included:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    xvfb \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    x11-apps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /e2e

# Copy your project files
COPY . .

# Set the default entrypoint to prevent overriding Cypress commands
ENTRYPOINT [""]

# Use bash as the default command to keep the container running
CMD ["bash"]
