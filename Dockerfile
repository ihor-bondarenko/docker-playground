# Use an official Python runtime as a parent image
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./src /app

# Install any needed packages specified in requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8087

# Run app.py when the container launches
RUN npm install

CMD [ "npm", "start" ]
