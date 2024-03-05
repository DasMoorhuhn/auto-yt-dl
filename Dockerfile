FROM python:3.12.2-alpine
WORKDIR /app

LABEL org.opencontainers.image.source="https://github.com/xXGuhuXx/auto-yt-dl"

ENV UMASK=000
ENV UID=99
ENV GID=100
ENV DATA_PERM=770

COPY requirements.txt requirements.txt
RUN pip3.12 install -r requirements.txt

COPY src/ .
COPY data .
COPY Downloads .
RUN chmod a+x run.sh

EXPOSE 5000

CMD ["sh", "/app/run.sh"]
