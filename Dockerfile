FROM python:3.10.12-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /LibraryManagement

COPY requirements.txt requirements.txt

RUN python3 -m pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

WORKDIR /LibraryManagement/library

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]