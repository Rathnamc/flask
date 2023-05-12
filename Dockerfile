# Use the official Python base image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source code to the working directory
COPY . .

# Set the command to run the Flask app
CMD ["python3", "app.py"]

