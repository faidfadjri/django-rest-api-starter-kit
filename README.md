# Django Rest API Starter Kit

Django is the web framework for python language. It use the MVT architecture or you can say Models-Views-Templates

- Models : responsible for knowing the database object type like table
- Views : responsible for handling the API request and determines the output (return) either JSON or a HTML ( Just like controllers on other framework )
- Templates : responsible to render the file into the HTML format

In **Python Virtual Environment** it using the **requirements.txt** to save the dependencies / packages name for our project. ( Think like package.json on Node JS )

### Getting Started

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
