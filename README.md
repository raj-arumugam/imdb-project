# IMDB Movies API Project

This project has been developed using Python 3.7.2 with Django 2.1.7 using Django Rest Framework. 
SQLite database has been used for backend and it will be automatically created when applying migrations. 

The prerequisite is Mac OS with Python 3.7.2 installed. check your python version by running 
"python3 -V" in command line. You can download the latest Python version here https://www.python.org/downloads/ 

## Follow quick instructions below to launch the API endpoint

1. Download source code and navigate to project directory

        >> cd imdb-project 

2. Create and activate Virtual Environment

        # Create virtual environment
        >> python3 -m venv imdb-venv
        
        # Activate virtual environment
        # On macOS/Linux:
        >> source imdb-venv/bin/activate
        # On Windows:
        >> imdb-venv\Scripts\activate

        # Verify you're in virtual environment (should show path to imdb-venv)
        >> which python
        
        # Upgrade pip
        >> python -m pip install --upgrade pip

3. Install dependencies
        
        # Ensure you're in virtual environment (should see (imdb-venv) in prompt)
        >> pip install -r requirements.txt

4. Apply DB Migrations

        >> ./manage.py makemigrations
        >> ./manage.py migrate

5. Run Web Server

    We're now ready to test the API's. Let's start the web server.

        >> ./manage.py runserver


## Usage

The API's can be accessed directly from browser, by going to http://127.0.0.1:8000/. The landing page displayed sophisticated API documentation which provides detailed guidelines and testing tools.


## API End Points

### Load CSV Movie Data
```
Request Method: POST
Content-Type:   text/csv 
End Point:      /imdb/api/movies/ 
Example:        http://127.0.0.1:8000/imdb/api/movies/
```
### Search Movies By Year
```
Request Method: GET 
End Points:     /imdb/api/movies/year
                /imdb/api/movies/year/{start_year}
                /imdb/api/movies/year/{start_year}/{end_year}
```
```
Example:
                http://127.0.0.1:8000/imdb/api/movies/year
                http://127.0.0.1:8000/imdb/api/movies/year/2010
                http://127.0.0.1:8000/imdb/api/movies/year/2010/2016
```
### Search Movies By Genre
```
Request Method: GET
End points:     /imdb/api/movies/genre
                /imdb/api/movies/genre/{genre}
```
```
Example:        
                http://127.0.0.1:8000/imdb/api/movies/genre
                http://127.0.0.1:8000/imdb/api/movies/genre/comedy
```

### PEP8 Coding standards check

You can run the following command to check code quality score. 

    >> pylint --load-plugins pylint_django api/

### Execute Unit Testing and Run Code Coverage percentage

    >> coverage run --source='.' manage.py test api

    >> coverage report

## Additional Notes

- Always ensure you're working in the virtual environment - you should see `(imdb-venv)` in your terminal prompt
- To deactivate the virtual environment when done:
        >> deactivate

- If you need to remove and recreate the virtual environment:
        >> rm -rf imdb-venv/    # On macOS/Linux
        >> rmdir /s imdb-venv   # On Windows