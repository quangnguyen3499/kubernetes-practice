# syntax=docker/dockerfile:1.9
FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

WORKDIR /app

COPY . /app
RUN pip install flask

ENTRYPOINT ["python3"]
CMD ["app.py"]
