# syntax=docker/dockerfile:1

FROM python:3.11.1

WORKDIR /python-forecast-flow-docker

COPY former-forecast-flow/requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

# COPY former-forecast-flow/ .
COPY former-forecast-flow/retrain.py .

CMD ["python3", "retrain.py"]
