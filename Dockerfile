FROM python:3.9-slim

ENV CONTAINER_HOME=/var/www
ADD . ${CONTAINER_HOME}
WORKDIR ${CONTAINER_HOME}

COPY . .

RUN pip install -r ${CONTAINER_HOME}/requirements.txt
CMD gunicorn --bind 0.0.0.0:5000 flask_app:app
