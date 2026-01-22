FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV DB_PATH=/mysqlite-db/coches.db

EXPOSE 5000

CMD ["flask", "--app", "aplicacion.py", "run", "--host=0.0.0.0"]
