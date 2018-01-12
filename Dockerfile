FROM python:2

COPY requirements.txt thumbor.conf /

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["thumbor", "-l", "info", "-p", "80", "-c", "/thumbor.conf"]
