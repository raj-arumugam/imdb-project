# Define the Python executable and the name of the virtual environment directory
PYTHON=python3
VENV_DIR=imdb-venv
ACTIVATE=$(VENV_DIR)/bin/activate

# Target to create a virtual environment and run the server
.PHONY: run
run:
	$(PYTHON) -m venv $(VENV_DIR)
	/bin/bash -c "source $(ACTIVATE) && \
	python -m pip install --upgrade pip && \
	pip install -r requirements.txt && \
	./manage.py makemigrations && \
	./manage.py migrate && \
	./manage.py runserver"
	@echo "Server is running on http://127.0.0.1:8000/"

# Target to clean the virtual environment
.PHONY: clean
clean:
	rm -rf $(VENV_DIR)
	@echo "Virtual environment removed."