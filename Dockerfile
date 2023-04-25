FROM python:3
RUN pip install --upgrade pip
RUN pip install Django==3.2
COPY . .
RUN python manage.py migrate
CMD ["python3","manage.py", "runserver", "0.0.0.0:8000"]
