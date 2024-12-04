# # Use an official Python runtime as a parent image
# FROM python:3.11-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# COPY main.py /app/
# COPY app.py /app/

# # Install any needed packages specified in requirements.txt
# COPY requirements.txt /app/requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# # Expose the port that FastAPI runs on
# EXPOSE 8000

# # Command to run the FastAPI app using Uvicorn

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .
# COPY main.py .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the FastAPI application code into the container
COPY . /my-python-app/src
# COPY  /my-python-app .
VOLUME /app

# Make port 8010 available to the world outside this container
EXPOSE 8010

# Command to run the FastAPI app using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8010"]
