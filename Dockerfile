FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY Lavalink.jar /app/Lavalink.jar
COPY application.yml /app/application.yml

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
