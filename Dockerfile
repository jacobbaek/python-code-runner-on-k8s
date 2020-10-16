FROM python:3.8.5
MAINTAINER Jacobbaek(dubaek@gmail.com)

RUN mkdir -p /app

WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

ENV APP_ENV development

EXPOSE 5000

CMD ["python", "app.py"]