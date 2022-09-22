FROM python:3.10-slim
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*
COPY requirements.txt ./
RUN pip3 install -r requirements.txt --no-cache-dir
COPY app.py ./
CMD ["python3", "app.py"]
EXPOSE 80
