FROM python:3.6

MAINTAINER Stef sstefin@bk.ru

COPY requirements.txt /app/

WORKDIR ./app/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

ENTRYPOINT ["./docker-entrypoint.sh"]

CMD gunicorn myproject.wsgi -w 4 -b :8000
