FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir litellm

EXPOSE 4000

CMD ["litellm", "--host", "0.0.0.0", "--port", "4000"]
