FROM python:3.11-slim

RUN apt-get update && apt-get install -y tzdata

WORKDIR /deploo

COPY requirements.txt /deploo/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /deploo/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
