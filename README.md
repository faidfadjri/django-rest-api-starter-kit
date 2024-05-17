# Django Rest API Starter Kit

Django is the web framework for python language. It use the MVT architecture or you can say Models-Views-Templates

- Models : responsible for knowing the database object type like table
- Views : responsible for handling the API request and determines the output (return) either JSON or a HTML ( Just like controllers on other framework )
- Templates : responsible to render the file into the HTML format

In **Python Virtual Environment** it using the **requirements.txt** to save the dependencies / packages name for our project. ( Think like package.json on Node JS )

## Getting Started

Create a virtual environment ( isolate the dependency for each project ) think like package.json on node js

```bash
    # creating new virtual environment
    python3 -m venv .venv

    # activate the virtual environtment
    source .venv/bin/activate

    # install all package required
    pip3 install -r requirements.txt
```

Run Application

```bash
    # Open the restapi folder
    cd restapi

    # Running django server
    python3 manage.py runserver
```

## 📔 Learn More

### Configuration

All django configuration is handled by this file called `settings.py`

- [Database Configuration](#database-configuration)
- [Debugging](#debugging)
- [Installed Apps](#installed-apps)
- [Middleware](#middleware)
- [Static Files Configuration](#static-files-configuration)
- [Template Configuration](#template-configuration)
- [Security Settings](#security-settings)
- [Internationalization and Localization](#internationalization-and-localization)

### Database Configuration

Django supports multiple databases. In `settings.py`, you specify the database engine, database name, user credentials, host, and other database-related settings.

```python
# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}
```

### Debugging

`DEBUG` setting controls whether your Django application is in debug mode or not. Debug mode provides detailed error pages and stack traces for debugging purposes.

```python
DEBUG = True # set to false in production
```

### Installed Apps

Django app is a reusable component within a Django project that encapsulates a set of related functionalities. Just like services you may have multiple apps like shop, order, shipping and more

```python
INSTALLED_APPS = [
   # -- default django middleware
   'rest_framework' # required for this case (Rest API)
   # your own apps
]
```

### Middleware

a functionalities which run between the user's request and the views. Think like when user hit the request it will face with the `middleware` first then it will accessible from views if the request is authorized

```python
MIDDLEWARE = [
    # -- default django middleware
    # your own middleware
]
```

### Static Files Configuration

Django should look for static files (such as CSS, JavaScript, and images) and how they should be served

```python
# URL prefix for static files.
STATIC_URL = '/static/' # default static directory

# Additional locations of static files.
STATICFILES_DIRS = [
    '/path/to/your/project/static/',
]
```

### Security Settings

settings.py includes various security-related settings such as `SECRET_KEY` (used for cryptographic signing), `CSRF_COOKIE_SECURE` (whether to use a secure CSRF cookie), and `X_FRAME_OPTIONS` (to control whether your site can be embedded in a frame or iframe).

```python
# Set the HTTP Strict Transport Security (HSTS) header to enforce HTTPS.
SECURE_HSTS_SECONDS = 31536000  # 1 year
SECURE_HSTS_INCLUDE_SUBDOMAINS = True
SECURE_HSTS_PRELOAD = True

# Your customizable value like secret_key and so on
```

### Internationalization and Localization

Django supports internationalization (i18n) and localization (l10n) for building multilingual websites. In settings.py, you specify settings related to `language` and `timezone` support.
