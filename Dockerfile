FROM python:3.10.0-alpine

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]