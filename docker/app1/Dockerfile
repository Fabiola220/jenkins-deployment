FROM python:3.9-slim

WORKDIR /app

COPY ../../src/app1/ .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]