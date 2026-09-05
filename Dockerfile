FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY embeddings ./embeddings

EXPOSE 8030
CMD ["python", "-m", "uvicorn", "embeddings.main:app", "--host", "0.0.0.0", "--port", "8030"]
