# Use official Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file first (layer caching)
COPY requirements.txt .

# Install dependencies (none here, but good practice)
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire project into container
COPY . .

# Command to run when container starts
CMD ["python", "src/main.py"]
