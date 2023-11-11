# Использовать официальный образ родительского образа / слепка.
FROM python:3.6.1

ENV PYTHONUNBUFFERED 1

WORKDIR /django_cicd

RUN pip install --upgrade pip
COPY requirements.txt /django_cicd/

RUN pip install -r requirements.txt
COPY . /django_cicd/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]