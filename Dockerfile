FROM python:alpine3.7

WORKDIR /app

COPY app.py /app/app.py

RUN pip install -r requirements.txt

CMD ["python", "/app/app.py"]

