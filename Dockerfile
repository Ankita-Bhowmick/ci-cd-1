# Use official Python runtime as base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all project files into container
COPY . .

# Install dependencies if you have requirements.txt
# If no requirements.txt, this line will be skipped safely
RUN if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

# Expose app port if needed
EXPOSE 5000

# Run the Python app
CMD ["python", "app.py"]
