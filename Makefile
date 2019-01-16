help:
	@echo "rf:      run Flask"
	@echo "hf:      hit Flask server"
	@echo "rg:      run Gunicorn"
	@echo "hg:      git Gunicorn server"
	@echo "pip-in:  install dependencies"

rf:
	python3 myproject.py

hf:
	http http://127.0.0.1:5000

rg:
	gunicorn --bind 0.0.0.0:8000 wsgi

hg:
	http http://127.0.0.1:8000

pipin:
	pip install -r requirements.txt
