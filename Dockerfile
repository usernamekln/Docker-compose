FROM python:3.10-slim
WORKDIR /app
RUN useradd -m siva
copy  requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN chown -R  siva:siva /app 
USER siva

CMD ["python", "app.py"]

