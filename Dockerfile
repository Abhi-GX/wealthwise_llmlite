FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir 'litellm[proxy]'

EXPOSE 4000

CMD ["litellm", "--host", "0.0.0.0", "--port", "4000", "--model", "groq/llama-3.3-70b-versatile", "--model", "groq/llama-3.1-8b-instant"]
