install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
		sudo apt-get install pylint
lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv -cov=hello test_hello.py
