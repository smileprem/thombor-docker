FROM python:2

RUN pip install opencv-python && \
    pip install thumbor

COPY thumbor.conf /etc/thumbor.conf

EXPOSE 80

CMD ["thumbor", "-l", "info", "-p", "80", "-c", "/etc/thumbor.conf"]
