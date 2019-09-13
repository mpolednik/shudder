FROM python:2.7

WORKDIR /opt/tm/shudder
COPY . /opt/tm/shudder

RUN apt-get update && apt-get install -y docker.io
ENV CONFIG_FILE=/opt/tm/shudder/config.toml

RUN pip install .

CMD ["python", "-m", "shudder"]
