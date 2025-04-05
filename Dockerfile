# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY server.py /app

# Install any needed dependencies
RUN pip install flask

# Run app.py when the container launches
CMD ["python", "server.py"]
