FROM python:alpine3.7

WORKDIR /app

COPY app.py /app/app.py

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "/app/app.py"]

