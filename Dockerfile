# 1. Use an official Python image
FROM python:3.12-slim

# 2. Prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3. Set the "home" folder inside the container
WORKDIR /app

# 4. Install system dependencies for MySQL ---
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# 5. Install libraries
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 6. Copy entire Django project
COPY . .

# 7. Open the port
EXPOSE 8000

# 8. Start the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]