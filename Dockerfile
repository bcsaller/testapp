FROM python:3.8-slim-buster
WORKDIR /tmp
COPY Pipfile Pipfile.lock /tmp/
RUN pip3 install --upgrade pip pipenv
RUN pipenv install --system
COPY testapp.py .

EXPOSE 8000
CMD ["uvicorn", "--host", "0.0.0.0", "testapp:app"]
