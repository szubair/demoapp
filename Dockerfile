FROM python:alpine3.7

MAINTAINER Sabeer MZ "sabeerz@cts.com"

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["python","app.py"]

