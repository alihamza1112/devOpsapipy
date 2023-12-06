# Use an official Python runtime as a parent image
FROM python:3.9-slim as base

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask app to run on
# Expose port 8000 for the Flask app to run on
EXPOSE 8000

# Define environment variable
ENV FLASK_APP=app.py

# Command to run on container start
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
