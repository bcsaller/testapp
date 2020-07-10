build:
	docker build -t bcsaller/testapp:latest .

run: build
	docker run -p 8000:8000 --rm -ti bcsaller/testapp:latest

all: build
