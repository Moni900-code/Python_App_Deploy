FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app/ /app/

EXPOSE 5000

CMD ["python3", "app.py"]
