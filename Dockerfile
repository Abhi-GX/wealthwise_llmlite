FROM python:3.11-slim

WORKDIR /app

# The change is on the line below:
RUN pip install --no-cache-dir 'litellm[proxy]'

EXPOSE 4000

CMD ["litellm", "--host", "0.0.0.0", "--port", "4000"]
