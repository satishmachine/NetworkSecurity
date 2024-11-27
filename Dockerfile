FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && install requirements.txt
CMD ["python3", "app.py"]