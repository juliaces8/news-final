# News Portal Capstone Project

## Setup with venv (Virtual Environment)
1. Clone the repo.
2. Create venv: `python -m venv .venv`
3. Activate: `.venv\Scripts\activate`
4. Install: `pip install -r requirements.txt`
5. Run: `python manage.py runserver`

## Setup with Docker
1. Build image: `docker build -t news-app .`
2. Run container: `docker run -p 8000:8000 news-app`

## Documentation
HTML documentation is located in the `docs/_build/html` directory.
