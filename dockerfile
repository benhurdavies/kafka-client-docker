FROM adoptopenjdk/openjdk11

RUN apt update && apt install wget

WORKDIR /app

RUN wget https://downloads.apache.org/kafka/3.2.1/kafka_2.13-3.2.1.tgz && tar -xvzf kafka_2.13-3.2.1.tgz

WORKDIR /app/kafka_2.13-3.2.1
