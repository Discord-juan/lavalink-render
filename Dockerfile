FROM openjdk:17-alpine

RUN apk add --no-cache curl

WORKDIR /opt/lavalink

RUN curl -Lo Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

COPY application.yml .

CMD ["java", "-jar", "Lavalink.jar"]
