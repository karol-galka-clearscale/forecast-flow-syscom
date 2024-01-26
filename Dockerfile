# syntax=docker/dockerfile:1

FROM python:3.11.1

WORKDIR /python-forecast-flow-docker

COPY former-forecast-flow/requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY former-forecast-flow/ .

CMD ["python3", "retrain.py"]
