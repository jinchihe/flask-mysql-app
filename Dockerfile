FROM python:3.6-slim

RUN apt-get clean \
    && apt-get -y update

RUN apt-get -y install \
    nginx \
    python3-dev \
    build-essential

WORKDIR /app

COPY app/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt --src /usr/local/src

COPY . .

EXPOSE 5000
CMD [ "python", "/app/flaskapi.py" ]
