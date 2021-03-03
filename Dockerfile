# Use NodeJS base image
FROM node:13

# Copie project files
COPY . /www/app


# Create app directory
WORKDIR /www/app


# Install dependencies
RUN npm install
RUN npm install -g ionic
RUN ionic build 

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8100

# Define the Docker image's behavior at runtime
CMD ["ionic", "serve"]