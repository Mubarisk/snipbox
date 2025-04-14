# SnipBox

A Django-based API for managing code snippets.

## Prerequisites

- Python 3.8+
- pip
- virtualenv (recommended)

## Setup

1. Clone the repository:
```bash
git clone https://github.com/Mubarisk/snipbox.git
cd snipbox
```

2. Create and activate virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Run migrations:
```bash
python manage.py migrate
```

5. Create superuser (optional):
```bash
python manage.py createsuperuser
```

## Running the Project

1. Start the development server:
```bash
python manage.py runserver
```

2. Access the API at:
- API Root: http://localhost:8000/api/
- API Documentation: http://localhost:8000/swagger/

## API Testing



## Project Structure

- `auth/` - Authentication related views and models
- `snip/` - Core snippet functionality
- `snipbox/` - Project settings and configuration



