FROM ubuntu:18.04

RUN apt-get update && apt-get install -y software-properties-common gcc && \
    add-apt-repository -y ppa:deadsnakes/ppa

RUN apt-get update && apt-get install -y curl python3.6 python3-distutils python3-pip python3-apt

WORKDIR /app

COPY app.py /app/app.py

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]

