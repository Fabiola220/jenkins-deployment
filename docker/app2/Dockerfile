FROM python:3.9-slim

WORKDIR /app

COPY ../../src/app2/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ../../src/app2/ ./

CMD ["python", "main.py"]