FROM python:3.9

ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY ./req.txt /app/req.txt
RUN pip install -r req.txt
COPY . /app

CMD python manage.py runserver 0.0.0.0:8000
EXPOSE 8000