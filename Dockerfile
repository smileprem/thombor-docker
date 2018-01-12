FROM python:2

#RUN pip install opencv-python && \
#    pip install thumbor

COPY requirements.txt thumbor.conf /

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["thumbor", "-l", "info", "-p", "80", "-c", "/thumbor.conf"]
