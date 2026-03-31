# News Portal Capstone Project

This is a Django-based News Portal application featuring automated documentation and containerization.

## Features
- Full Django News Application
- Sphinx Documentation
- Docker Containerization
- REST Framework Integration

## Setup with Virtual Environment (venv)
1. Clone the repository to your local machine.
2. Create a virtual environment:
   ```powershell
   python -m venv .venv_new

3. Activate the virtual environment:
.venv_new\Scripts\activate

4. Install the required dependencies:
pip install -r requirements.txt

5. Run the migrations and start the server:
python manage.py migrate
python manage.py runserver

## Setup with Docker

1. Build the Docker image:
docker build -t news-portal-app .

2. Run the container:
docker run -p 8000:8000 news-portal-app

## Documentation
The project documentation is generated using Sphinx. To view it, navigate to:
docs/_build/html/index.html

## Secrets and Security
Please refer to the secrets.txt file provided in the submission portal for the necessary keys to run this application.
