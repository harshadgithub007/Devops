FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install -y postgresql

ENV POSTGRES_USER abhilash

ENV POSTGRES_PASSWORD 1234

ENV POSTGRES_DB abhilashdb

EXPOSE 5432

CMD ["systemctl", "start", "postgres"]
